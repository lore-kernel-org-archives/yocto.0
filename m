Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46FF3E009B9; Fri, 10 Mar 2017 05:50:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDBF5E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:50:03 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Mar 2017 05:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,141,1486454400"; d="scan'208";a="1120929089"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2017 05:50:01 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: openembedded-architecture@lists.openembedded.org,
	Yocto Project <yocto@yoctoproject.org>
Message-ID: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
Date: Fri, 10 Mar 2017 15:49:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
Subject: Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 13:50:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

*Introduction*

The new generation of programming languages (think node.js, Go, Rust) is 
a poor fit for the Yocto build model which follows the traditional Unix 
model. In particular, those new development environments have no problem 
with 'grabbing random stuff from the Internet' as a part of development 
and build process. However, Yocto has very strict rules about the build 
steps and what they can and can not do, and also a strict enforcement of 
license and version checks for every component that gets built. Those 
two models clash, and this is a proposal of how they could be reconciled.

I'll also send a separate email that talks specifically about MEAN stack 
and how it could be supported as Yocto - take it as a specific example 
for all of the below.

*Background*

The traditional development model on Unix clearly separates installation 
of dependencies needed to develop a project from the development process 
itself. Typically, when one wants to build some project, first the 
project README needs to be inspected, and any required dependencies 
installed system-wide using the distribution package management's tool. 
When those dependencies change, usually this manifests itself in a 
previously unseen build failure which is again manually resolved by 
figuring out the missing dependency and installing it. This can be 
awkward, but it's how things have been done for decades, and Yocto's 
build system (with separate steps for fetching, unpacking, building, 
packaging etc.) is built around the assumption that most software can be 
built this way.

Unfortunately, this situation is changing. The new development 
environments, such as Go, Rust or node.js see this approach as 
cumbersome and getting-in-the-way for developers. They want projects' 
setup to be as quick and automatic as possible - and it should also be 
cross-platform. So each such environment comes with a specialized tool 
which handles installation of dependencies and bypasses the distribution 
package management altogether. Typically these dependencies are fetched 
from the Internet and installed into the project tree. The details are 
hidden; it's assumed that developers don't want to know or care. In 
particular, specific versions of dependencies can be only weakly 
specified or ignored altogether (that is, the latest commit is always 
fetched), licensing is totally overlooked, a list of what was installed 
cannot be trivially obtained, and repeating the procedure the next day 
may result in a different set of code being pulled in, because someone 
somewhere added a commit to their github repo.

This does not work well in Yocto context. Yocto project prides itself on 
being specific and exact about what gets build, how it gets built and 
what license is attached to each component. So we need to somehow 
enforce that with the new model, and avoid the situation where separate, 
incompatible, and difficult to grasp solutions are developed for each 
language environment.

*Design considerations*

1. I would like recipes to remain short and sweet and clear. In 
particular, node.js projects can pull in hundreds of dependencies; I 
want to keep their metadata out of the recipe and somewhere else, for 
readability, clarity, and maintainability.

2. I don't want to implement custom fetchers, or otherwise re-implement 
(poorly) those language-specific build and dependency management tools. 
Let's use npm, cargo and go as much as we possibly can and let them do 
their job - yes, that also includes them fetching things from the 
internet for us.

3. When things need to be updated to a new version, manual editing of 
metadata should be avoided: when there are hundreds of dependencies, a 
tool should modify the metadata, and human should only inspect the changes.

*How do we deal with this?*

By introducing a lockdown file that lives next to the recipe. The 
concept is already implemented in npm, but needs to be made generic and 
come with a common API that is using the file to verify the build.

*What is a lockdown file?*

The file captures all of the recipe dependencies that are pulled in by 
the build tool. For each such dependency the following information is 
provided (this is really similar to what is in recipes, and that is on 
purpose:

- name
- description (optional)
- verification data (this is specific to each language, but can be 
version, git commit id, a checksum and so on). The only requirement is 
that it maps to a unique set of code.
- license string
- license file path
- license checksum

*How is the lockdown file used?*

1. It needs to be generated in the first place when adding a new recipe. 
For example:

bitbake -c generate_lockdown recipe

would fetch and unpack the recipe code, then run npm/cargo/go to pull in 
the dependencies, then walk the project tree and generate the lockdown 
metadata. Sometimes the tools can help here somewhat, but other times 
they can be used only for fetching, and verification data has to be 
figured out by inspecting the tree with our custom-written code. This is 
the hard part that we have to deal with.

2. It can be used to perform a 'loose' build of the recipe that does not 
guarantee reproducibility.

We have to accept this: some projects just don't care about it, and 
offer no support to those who want reproducibility. We should at least 
provide a way to build such projects in Yocto. The information in 
lockdown file is not enforced; it's merely compared against the actual 
build and any differences presented to the user as warnings. This is a 
recipe setting.

3. It can also be used to perform a 'strict' build of the recipe that 
enforces what is in the lockdown file.

The information in the lockdown file is given to the language-specific 
tool to help it fetch the right things (whenever the tool makes it 
possible), and then is used to compare to what was fetched, but this 
time any mismatches stop the build. Exactly how this happens is specific 
to each language, and again, it is the hard bit that we need to deal with.

4. When a recipe is updated to a new version, the lockdown file needs to 
be updated as well.

One possibility is to generate a new lockdown file (as in point 1), and 
then a human can compare that against the old lockdown file.

bitbake -c update_lockdown recipe

5. Packaging

Go by default is compiling everything into a static executable, so there 
are no separate packages. All dependencies' licenses should be rolled 
into the package: lockdown file tells what they are and where they are 
in the build tree.

Other environments do install the dependencies somewhere in the system, 
so those should be packaged separately: lockdown file is used to get a 
list of them and attach licenses to them. Installation paths (things 
that FILES_ is set to) should typically be easy to figure out from 
dependency names.

*Conclusion*

This is only a preliminary idea: I understand that the devil is in the 
details, and there are plenty of details where things may not work out 
as planned, or there's something else I didn't think of that should be 
accounted for. So flame away!


