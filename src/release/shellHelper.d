/*******************************************************************************

    Command line interaction helper

    Copyright:
        Copyright (c) 2017 dunnhumby Germany GmbH. All rights reserved.

    License:
        Boost Software License Version 1.0. See LICENSE.txt for details.

*******************************************************************************/

module release.shellHelper;

public import internal.shell.helper;

import release.options;

/*******************************************************************************

    Prompts the user for a yes or no response, returns the response.

    Params:
        fmt = question to ask
        args = fields to format the question

    Returns:
        true if user decided for yes, else false

*******************************************************************************/

public bool getBoolChoice ( Args... ) ( string fmt, Args args )
{
    import internal.shell.helper : getBoolChoice;
    return getBoolChoice(options.assume_yes, fmt, args);
}
