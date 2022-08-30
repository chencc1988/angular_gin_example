module.exports = {
    extends: ['@commitlint/config-angular'],
    rules: {
        'scope-enum': [2, 'always', [
            'infrastructure',
            'document',
            'readme',
            'angular',
            'go',
            'proxy']
        ],
        'subject-case': [2, 'always', ['lower-case']],
        'subject-full-stop': [2, 'never', '.'],
    },
};