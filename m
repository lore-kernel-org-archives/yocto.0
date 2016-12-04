Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E7ADE00DED; Sun,  4 Dec 2016 11:14:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBC1E00DE7
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 11:14:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 04 Dec 2016 11:14:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,743,1477983600"; d="scan'208";a="1067843631"
Received: from patejona-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.67])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2016 11:14:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Vincent Rubiolo <vincent.libre@cryostase.eu>
Date: Mon, 05 Dec 2016 08:14:46 +1300
Message-ID: <3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 04 Dec 2016 19:14:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Vincent,

On Sun, 04 Dec 2016 10:18:25 Vincent Rubiolo wrote:
> I am trying to use recipetool to create a new recipe as a learning
> example[0] but it fails with the error below after downloading the
> remote archive. Is this a known error? I have tried to look for it on
> the mailing list archives and the web and nothing shows up.
> 
> I am following the steps under the dev manual[1] after having cloned the
> morty poky branch and sourcing oe-init-build-env.
> 
> The commands are run in a Fedora 23 Docker container as my host is
> Fedora 25 but I get the same error if I run recipetool in that env too.
> 
> Thanks for your help!
> 
> Vincent
> 
> [0] I am aware there is already a recipe for octoprint at
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-maker/tree/recipes-webui/octo
> print/octoprint_git.bb?h=master [1]
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-reci
> pe-locate-or-automatically-create-a-base-recipe
> 
> $ git clone git://git.yoctoproject.org/poky -b morty
> $ cd poky
> $ . oe-init-build-env
> $ recipetool create -o ./octoprint.bb -x octoprint-master
> https://github.com/foosel/OctoPrint/archive/master.zip
> NOTE: Fetching https://github.com/foosel/OctoPrint/archive/master.zip...
> --2016-12-04 18:08:38--
> https://github.com/foosel/OctoPrint/archive/master.zip
> Resolving github.com (github.com)... 192.30.253.112, 192.30.253.113
> Connecting to github.com (github.com)|192.30.253.112|:443... connected.
> HTTP request sent, awaiting response... 302 Found
> Location: https://codeload.github.com/foosel/OctoPrint/zip/master
> [following]
> --2016-12-04 18:08:38--
> https://codeload.github.com/foosel/OctoPrint/zip/master
> Resolving codeload.github.com (codeload.github.com)... 192.30.253.121,
> 192.30.253.120
> Connecting to codeload.github.com
> (codeload.github.com)|192.30.253.121|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 2974977 (2.8M) [application/zip]
> Saving to: '/yocto/poky/build/downloads/master.zip'
> 
> 
> 2016-12-04 18:08:39 (3.20 MB/s) -
> '/yocto/poky/build/downloads/master.zip' saved [2974977/2974977]
> 
> NOTE: Unpacking /yocto/poky/build/downloads/master.zip to
> /tmp/recipetool-4tplbgta/
> ERROR: Failed to parse setup.py
> Traceback (most recent call last):
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 181, in process
>      setup_info, uses_setuptools, setup_non_literals, extensions =
> self.parse_setup_py(setupscript)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 347, in parse_setup_py
>      info, imported_modules, non_literals, extensions = gather_setup_info(f)
> File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py", line
> 604, in gather_setup_info
>      parsed = ast.parse(fileobj.read(), fileobj.name)
>    File "/usr/lib64/python3.4/encodings/ascii.py", line 26, in decode
>      return codecs.ascii_decode(input, self.errors)[0]
> UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position
> 4657: ordinal not in range(128)
> Traceback (most recent call last):
>    File "/yocto/poky/scripts/recipetool", line 120, in <module>
>      ret = main()
>    File "/yocto/poky/scripts/recipetool", line 109, in main
>      ret = args.func(args)
>    File "/yocto/poky/scripts/lib/recipetool/create.py", line 615, in
> create_recipe
>      handler.process(srctree_use, classes, lines_before, lines_after,
> handled, extravalues)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 225, in process
>      self.apply_info_replacements(info)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 452, in apply_info_replacements
>      new_value = replace_value(search, replace, a_value)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 427, in replace_value
>      new_value = re.sub(search, replace, value)
>    File "/usr/lib64/python3.4/re.py", line 179, in sub
>      return _compile(pattern, flags).sub(repl, string, count)
> TypeError: expected string or buffer

Hmm, it looks like we're treating a byte array as a string (i.e. missing 
decoding) and that doesn't work. Likely this broke during the Python3 
migration, and since there are a number of different code paths in 
recipetool's python handling code our relatively simplistic automated tests 
didn't hit it. I have a fix here and will send it out soon.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

