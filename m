Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C25EE003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 08:57:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2012 08:57:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72847001"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 08:57:54 -0800
Message-ID: <4F50FBE6.3050809@linux.intel.com>
Date: Fri, 02 Mar 2012 08:57:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<1a6f5ff2d903435947ae069d7370bd913a1f20f2.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <1a6f5ff2d903435947ae069d7370bd913a1f20f2.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/8] yocto-bsp: add templating engine
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Mar 2012 16:57:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The main implementation of the Yocto BSP templating engine,
> essentially containing the internal implementation of the 'yocto-bsp
> create' and yocto-bsp list' commands.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/lib/bsp/engine.py | 1336 +++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 1336 insertions(+), 0 deletions(-)
>  create mode 100644 scripts/lib/bsp/engine.py
> 
> diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
> new file mode 100644
> index 0000000..7bf3e92
> --- /dev/null
> +++ b/scripts/lib/bsp/engine.py
> @@ -0,0 +1,1336 @@
> +# ex:ts=4:sw=4:sts=4:et
> +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> +#
> +# Copyright 2012 Intel Corporation
> +# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>

same comments here...

> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License along
> +# with this program; if not, write to the Free Software Foundation, Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +
> +import os
> +import sys
> +from abc import ABCMeta, abstractmethod
> +from tags import *
> +import shlex
> +import json
> +


This looks like a healthy list of dependencies. Do we need to augment
the required packages list?


> +class Line():
> +    """
> +    Generic (abstract) container representing a line that will appear
> +    in the BSP-generating program.
> +    """
> +    __metaclass__ = ABCMeta

Oh, I didn't know about that. My ABCs have been rather amateur by
comparison. Nice.

> +
> +    def __init__(self, line):
> +        self.line = line
> +        self.generated_line = ""
> +
> +    @abstractmethod
> +    def gen(self, context = None):
> +        """
> +        Generate the final executable line that will appear in the
> +        BSP-generation program.
> +        """
> +        pass
> +
> +    def escape(self, line):
> +        """
> +        Escape single and double quotes and backslashes until I find
> +        something better (re.escape() escapes way too much)
> +        """
> +        return line.replace("\\", "\\\\").replace("\"", "\\\"").replace("'", "\\'")
> +
> +    def parse_error(self, msg, lineno, line):
> +         raise SyntaxError("%s: %s" % (msg, line))
> +


Very nicely pythonic Tom. Classes, PyDoc, decorators, exceptions. Nice work!

> +
> +class NormalLine(Line):
> +    """
> +    Container for normal (non-tag) lines.
> +    """
> +    def __init__(self, line):
> +        Line.__init__(self, line)
> +        self.is_filename = False
> +        self.is_dirname = False
> +        self.out_filebase = None
> +
> +    def gen(self, context = None):
> +        if self.is_filename:
> +            line = "of = open(\"" + os.path.join(self.out_filebase, self.escape(self.line)) + "\", \"w\")"
> +        elif self.is_dirname:
> +            dirname = os.path.join(self.out_filebase, self.escape(self.line))
> +            line = "if not os.path.exists(\"" + dirname + "\"): os.mkdir(\"" + dirname + "\")"
> +        else:
> +            line = "of.write(\"" + self.escape(self.line) + "\\n\")"
> +        return line
> +
> +
> +class CodeLine(Line):
> +    """
> +    Container for Python code tag lines.
> +    """
> +    def __init__(self, line):
> +        Line.__init__(self, line)
> +
> +    def gen(self, context = None):
> +        return self.line
> +
> +
> +class Assignment:
> +    """
> +    Representation of everything we know about {{=name }} tags.
> +    Instances of these are used by Assignment lines.
> +    """
> +    def __init__(self, start, end, name):
> +        self.start = start
> +        self.end = end
> +        self.name = name
> +
> +
> +class AssignmentLine(NormalLine):
> +    """
> +    Container for normal lines containing assignment tags.  Assignment
> +    tags must be in ascending order of 'start' value.
> +    """
> +    def __init__(self, line):
> +        NormalLine.__init__(self, line)
> +        self.assignments = []
> +
> +    def add_assignment(self, start, end, name):
> +        self.assignments.append(Assignment(start, end, name))
> +
> +    def gen(self, context = None):
> +        line = self.escape(self.line)
> +
> +        for assignment in self.assignments:
> +            replacement = "\" + " + assignment.name + " + \""
> +            idx = line.find(ASSIGN_TAG)
> +            line = line[:idx] + replacement + line[idx + assignment.end - assignment.start:]
> +        if self.is_filename:
> +            return "of = open(\"" + os.path.join(self.out_filebase, line) + "\", \"w\")"
> +        elif self.is_dirname:
> +            dirname = os.path.join(self.out_filebase, line)
> +            return "if not os.path.exists(\"" + dirname + "\"): os.mkdir(\"" + dirname + "\")"
> +        else:
> +            return "of.write(\"" + line + "\\n\")"
> +
> +
> +class InputLine(Line):
> +    """
> +    Base class for Input lines.
> +    """
> +    def __init__(self, props, tag, lineno):
> +        Line.__init__(self, tag)
> +        self.props = props
> +        self.lineno = lineno
> +
> +        try:
> +            self.prio = int(props["prio"])
> +        except KeyError:
> +            self.prio = sys.maxint
> +
> +    def gen(self, context = None):
> +        try:
> +            depends_on = self.props["depends-on"]
> +            try:
> +                depends_on_val = self.props["depends-on-val"]
> +            except KeyError:
> +                self.parse_error("No 'depends-on-val' for 'depends-on' property",
> +                                 self.lineno, self.line)
> +        except KeyError:
> +            pass
> +
> +
> +class EditBoxInputLine(InputLine):
> +    """
> +    Base class for 'editbox' Input lines.
> +
> +    props:
> +        name: example - "Load address"
> +        msg: example - "Please enter the load address"
> +    result:
> +        Sets the value of the variable specified by 'name' to
> +        whatever the user typed.
> +    """
> +    def __init__(self, props, tag, lineno):
> +        InputLine.__init__(self, props, tag, lineno)
> +
> +    def query_user(self):
> +        msg = self.props["name"]
> +        if not msg:
> +            self.parse_error("No input 'msg' property found",
> +                             self.lineno, self.line)
> +
> +        return self.show_prompt(msg)
> +
> +    def gen(self, context = None):
> +        InputLine.gen(self, context)
> +        name = self.props["name"]
> +        if not name:
> +            self.parse_error("No input 'name' property found",
> +                             self.lineno, self.line)
> +        msg = self.props["msg"]
> +        if not msg:
> +            self.parse_error("No input 'msg' property found",
> +                             self.lineno, self.line)
> +
> +        line = name + " = default(raw_input(" + msg + " ), " + name + ")"
> +
> +        return line
> +
> +
> +class BooleanInputLine(InputLine):
> +    """
> +    Base class for boolean Input lines.
> +    props:
> +        name: example - "keyboard"
> +        msg:  example - "Got keyboard?"
> +    result:
> +        Sets the value of the variable specified by 'name' to "yes" or "no"
> +        example - keyboard = "yes"
> +    """
> +    def __init__(self, props, tag, lineno):
> +        InputLine.__init__(self, props, tag, lineno)
> +
> +    def query_user(self):
> +        msg = self.props["name"]
> +        if not msg:
> +            self.parse_error("No input 'msg' property found",
> +                             self.lineno, self.line)
> +
> +        return self.show_prompt(msg)
> +
> +    def gen(self, context = None):
> +        InputLine.gen(self, context)
> +        name = self.props["name"]
> +        if not name:
> +            self.parse_error("No input 'name' property found",
> +                             self.lineno, self.line)
> +        msg = self.props["msg"]
> +        if not msg:
> +            self.parse_error("No input 'msg' property found",
> +                             self.lineno, self.line)
> +
> +        line = name + " = boolean(raw_input(\"" + msg + " \"), " + name + ")"
> +
> +        return line
> +
> +
> +class ListInputLine(InputLine):
> +    """
> +    Base class for List-based Input lines. e.g. Choicelist, Checklist
> +    """
> +    __metaclass__ = ABCMeta
> +
> +    def __init__(self, props, tag, lineno):
> +        InputLine.__init__(self, props, tag, lineno)
> +        self.choices = []
> +
> +    def gen_choicepair_list(self):
> +        """generate a list of 2-item val:desc lists from self.choices"""

Nitpic, initial caps and period.

> +        if not self.choices:
> +            return None
> +
> +        choicepair_list = list()
> +
> +        for choice in self.choices:
> +            choicepair = []
> +            choicepair.append(choice.val)
> +            choicepair.append(choice.desc)
> +            choicepair_list.append(choicepair)
> +
> +        return choicepair_list
> +
> +    def gen_degenerate_choicepair_list(self, choices):
> +        """generate a list of 2-item val:desc with val=desc from passed-in choices"""

Nitpic, initial caps and period.

> +        choicepair_list = list()
> +
> +        for choice in choices:
> +            choicepair = []
> +            choicepair.append(choice)
> +            choicepair.append(choice)
> +            choicepair_list.append(choicepair)
> +
> +        return choicepair_list
> +
> +    def exec_listgen_fn(self, context = None):
> +        """
> +        execute the list-generating function contained as a string in
> +        the "gen" property.

Nitpic, initial caps.


And I'm stopping here. It looks really good, but it is a bit more than I
can review very closely right now. So I'd only have superficial
comments, which aren't so helpful right now. Nice work!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

