Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C249E008D6
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 16:58:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2014 16:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,627,1389772800"; d="scan'208";a="497333469"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2014 16:57:57 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.61]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.197]) with mapi id
	14.03.0123.003; Mon, 10 Mar 2014 16:57:57 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>,
	=?iso-8859-1?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] kernel-dev: Updates "Generating
	Configuration Files" section
Thread-Index: AQHPPLOIAo1wGW2OjkaNermWtEV7GZra7gdwgACHmID//3oy8IAAkyaA//979VA=
Date: Mon, 10 Mar 2014 23:57:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F79C17@ORSMSX101.amr.corp.intel.com>
References: <1394072458-5930-1-git-send-email-joaohf@gmail.com>
	<CF438FC2.76320%dvhart@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F79BAB@ORSMSX101.amr.corp.intel.com>
	<CF4391B9.7632F%dvhart@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F79BF2@ORSMSX101.amr.corp.intel.com>
	<CF439CE6.7636D%dvhart@linux.intel.com>
In-Reply-To: <CF439CE6.7636D%dvhart@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH] kernel-dev: Updates "Generating Configuration Files" section
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
X-List-Received-Date: Mon, 10 Mar 2014 23:58:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Darren,=20

The way I work is if a change applies to a previous major release, then I c=
herry-pick the change onto the top of the branch for the previously release=
d version.  Otherwise, the change goes onto the top of master only, which w=
ill be the case for this change.  Regarding your specific question... if so=
meone is working on/using a specific version of YP, they should use the doc=
umentation for that version.  So someone using 1.5 needs to use 1.5 version=
 of the manuals and not 1.6 or 1.5.1.=20

Scott

>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Monday, March 10, 2014 5:48 PM
>To: Rifenbark, Scott M; Jo=E3o Henrique Ferreira de Freitas;
>yocto@yoctoproject.org
>Subject: Re: [yocto] [yocto-docs][PATCH] kernel-dev: Updates "Generating
>Configuration Files" section
>
>On 3/10/14, 15:02, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
>wrote:
>
>>What you are saying is that the current method works for pre-1.6.  And,
>>the proposed changes from the patch apply only to 1.6 and on.  I would
>>apply the patch only to the "latest" version of the docs, which is the
>>tip of master and will be for 1.6.
>
>OK. My hesitation/question here is about the expectation of the document.
>If someone is working on the 1.5 release, should they ONLY use the 1.5
>documentation? Does this mean you "backport" fixes from the current
>development docs back to the previous releases of the docs?
>
>--
>Darren
>
>>
>>Scott
>>
>>>-----Original Message-----
>>>From: Darren Hart [mailto:dvhart@linux.intel.com]
>>>Sent: Monday, March 10, 2014 5:00 PM
>>>To: Rifenbark, Scott M; Jo=E3o Henrique Ferreira de Freitas;
>>>yocto@yoctoproject.org
>>>Subject: Re: [yocto] [yocto-docs][PATCH] kernel-dev: Updates
>>>"Generating Configuration Files" section
>>>
>>>On 3/10/14, 14:55, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
>>>wrote:
>>>
>>>>Yes - the manual for 1.6 is only for that release.  I would have to
>>>>take separate steps to apply it to dora or Dylan branches.
>>>
>>>The point there being that someone reading the current manual and
>>>working on the 1.5 releases, would find these proposed changes will
>>>fail. The method being removed here would work on all versions since
>>>this document was created.
>>>
>>>--
>>>Darren
>>>
>>>>
>>>>>-----Original Message-----
>>>>>From: Darren Hart [mailto:dvhart@linux.intel.com]
>>>>>Sent: Monday, March 10, 2014 4:52 PM
>>>>>To: Jo=E3o Henrique Ferreira de Freitas; yocto@yoctoproject.org
>>>>>Cc: Rifenbark, Scott M
>>>>>Subject: Re: [yocto] [yocto-docs][PATCH] kernel-dev: Updates
>>>>>"Generating Configuration Files" section
>>>>>
>>>>>On 3/5/14, 18:20, "Jo=E3o Henrique Ferreira de Freitas"
>>>>><joaohf@gmail.com>
>>>>>wrote:
>>>>>
>>>>>>Add a new step about how to use diffconfig task to create kernel
>>>>>>config fragments.
>>>>>>
>>>>>>[YOCTO #3862]
>>>>>>
>>>>>>Signed-off-by: Jo=E3o Henrique Ferreira de Freitas <joaohf@gmail.com>
>>>>>
>>>>>Thank you for updating the documentation. Please Cc: the relevant
>>>>>parties with patches to the list (the author for one, and a git log
>>>>>would reveal Scott R.
>>>>>as the next obvious owner).
>>>>>
>>>>>Scott, This is good stuff to add. My only thought is this is new
>>>>>functionality, the old method is still valid - and necessary before
>>>>>1.6.
>>>>>What are your thoughts on dealing with this? Does the manual with
>>>>>1.6 ONLY apply to 1.6?
>>>>>
>>>>>--
>>>>>Darren
>>>>>
>>>>>>---
>>>>>> documentation/kernel-dev/kernel-dev-common.xml | 25
>>>>>>+++++++++----------------
>>>>>> 1 file changed, 9 insertions(+), 16 deletions(-)
>>>>>>
>>>>>>diff --git a/documentation/kernel-dev/kernel-dev-common.xml
>>>>>>b/documentation/kernel-dev/kernel-dev-common.xml
>>>>>>index a152f9f..de04a39 100644
>>>>>>--- a/documentation/kernel-dev/kernel-dev-common.xml
>>>>>>+++ b/documentation/kernel-dev/kernel-dev-common.xml
>>>>>>@@ -342,32 +342,25 @@
>>>>>>                         <literallayout class=3D'monospaced'>
>>>>>>      $ bitbake linux-yocto -c kernel_configme -f
>>>>>>                         </literallayout></para></listitem>
>>>>>>-                    <listitem><para>Copy and rename the resulting
>>>>>>-                        <filename>.config</filename> file (e.g.
>>>>>>-                        <filename>config.orig</filename>).
>>>>>>-                        </para></listitem>
>>>>>>                     <listitem><para>Run the
>>>>>><filename>menuconfig</filename>
>>>>>>                         command:
>>>>>>                         <literallayout class=3D'monospaced'>
>>>>>>      $ bitbake linux-yocto -c menuconfig
>>>>>>                         </literallayout></para></listitem>
>>>>>>-                    <listitem><para>Prepare a configuration fragment
>>>>>>based on
>>>>>>-                        the differences between the two files.
>>>>>>-                        </para></listitem>
>>>>>>+                    <listitem><para>Run the
>>>>>><filename>diffconfig</filename>
>>>>>>+                        command to prepare a configuration fragment.
>>>>>>+                        The result file
>>>>>><filename>fragment.cfg</filename> will be placed in
>>>>>>+                        <filename>${</filename><ulink
>>>>>>url=3D'&YOCTO_DOCS_REF_URL;#var-
>>>>>WORKDIR'><filename>WORKDIR</filename></ul
>>>>>>ink
>>>>>>><filename>}</filename> directory:
>>>>>>+                        <literallayout class=3D'monospaced'>
>>>>>>+     $ bitbake linux-yocto -c diffconfig
>>>>>>+                        </literallayout></para></listitem>
>>>>>>                 </orderedlist>
>>>>>>             </para>
>>>>>>
>>>>>>             <para>
>>>>>>-                Ultimately, the configuration fragment file needs to
>>>>>>be a
>>>>>>+                The <filename>diffconfig</filename> command
>>>>>>+ creates a
>>>>>>file that is a
>>>>>>                 list of Linux kernel <filename>CONFIG_</filename>
>>>>>>assignments.
>>>>>>-                It cannot be in <filename>diff</filename> format.
>>>>>>-                Here is an example of a command that creates your
>>>>>>-                configuration fragment file.
>>>>>>-                Regardless of the exact command you use, plan on
>>>>>>reviewing
>>>>>>-                the output as you can usually remove some of the
>>>>>>defaults:
>>>>>>-                <literallayout class=3D'monospaced'>
>>>>>>-     $ diff -Nurp config.orig .config | sed -n "s/^\+//p" > frag.cfg
>>>>>>-                </literallayout>
>>>>>>+
>>>>>>                 See the "<link
>>>>>>linkend=3D'changing-the-configuration'>Changing the
>>>>>>Configuration</link>"
>>>>>>                 section for information on how to use the output as =
a
>>>>>>                 configuration fragment.
>>>>>>--
>>>>>>1.8.3.2
>>>>>>
>>>>>>_______________________________________________
>>>>>>yocto mailing list
>>>>>>yocto@yoctoproject.org
>>>>>>https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>
>>>>>
>>>>>--
>>>>>Darren Hart
>>>>>Yocto Project - Linux Kernel
>>>>>Intel Open Source Technology Center
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>
>>>
>>>--
>>>Darren Hart
>>>Yocto Project - Linux Kernel
>>>Intel Open Source Technology Center
>>>
>>>
>>>
>>
>>
>
>
>--
>Darren Hart
>Yocto Project - Linux Kernel
>Intel Open Source Technology Center
>
>
>


