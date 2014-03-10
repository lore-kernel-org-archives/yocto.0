Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC8AE00955
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:53:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2014 15:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,626,1389772800"; d="scan'208";a="469840454"
Received: from twillis1-mobl1.amr.corp.intel.com (HELO [10.254.38.139])
	([10.254.38.139])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2014 15:51:55 -0700
User-Agent: Microsoft-MacOutlook/14.3.9.131030
Date: Mon, 10 Mar 2014 15:52:20 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: =?ISO-8859-1?B?Sm/jbw==?= Henrique Ferreira de Freitas <joaohf@gmail.com>, 
	<yocto@yoctoproject.org>
Message-ID: <CF438FC2.76320%dvhart@linux.intel.com>
Thread-Topic: [yocto] [yocto-docs][PATCH] kernel-dev: Updates "Generating
	Configuration Files" section
References: <1394072458-5930-1-git-send-email-joaohf@gmail.com>
In-Reply-To: <1394072458-5930-1-git-send-email-joaohf@gmail.com>
Mime-version: 1.0
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
X-List-Received-Date: Mon, 10 Mar 2014 22:53:22 -0000
Content-type: text/plain;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

On 3/5/14, 18:20, "Jo=E3o Henrique Ferreira de Freitas" <joaohf@gmail.com>
wrote:

>Add a new step about how to use diffconfig task to create
>kernel config fragments.
>
>[YOCTO #3862]
>
>Signed-off-by: Jo=E3o Henrique Ferreira de Freitas <joaohf@gmail.com>

Thank you for updating the documentation. Please Cc: the relevant parties
with patches to the list (the author for one, and a git log would reveal
Scott R. as the next obvious owner).

Scott, This is good stuff to add. My only thought is this is new
functionality, the old method is still valid - and necessary before 1.6.
What are your thoughts on dealing with this? Does the manual with 1.6 ONLY
apply to 1.6?

--
Darren

>---
> documentation/kernel-dev/kernel-dev-common.xml | 25
>+++++++++----------------
> 1 file changed, 9 insertions(+), 16 deletions(-)
>
>diff --git a/documentation/kernel-dev/kernel-dev-common.xml
>b/documentation/kernel-dev/kernel-dev-common.xml
>index a152f9f..de04a39 100644
>--- a/documentation/kernel-dev/kernel-dev-common.xml
>+++ b/documentation/kernel-dev/kernel-dev-common.xml
>@@ -342,32 +342,25 @@
>                         <literallayout class=3D'monospaced'>
>      $ bitbake linux-yocto -c kernel_configme -f
>                         </literallayout></para></listitem>
>-                    <listitem><para>Copy and rename the resulting
>-                        <filename>.config</filename> file (e.g.
>-                        <filename>config.orig</filename>).
>-                        </para></listitem>
>                     <listitem><para>Run the
><filename>menuconfig</filename>
>                         command:
>                         <literallayout class=3D'monospaced'>
>      $ bitbake linux-yocto -c menuconfig
>                         </literallayout></para></listitem>
>-                    <listitem><para>Prepare a configuration fragment
>based on
>-                        the differences between the two files.
>-                        </para></listitem>
>+                    <listitem><para>Run the
><filename>diffconfig</filename>
>+                        command to prepare a configuration fragment.
>+                        The result file
><filename>fragment.cfg</filename> will be placed in
>+                        <filename>${</filename><ulink
>url=3D'&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink
>><filename>}</filename> directory:
>+                        <literallayout class=3D'monospaced'>
>+     $ bitbake linux-yocto -c diffconfig
>+                        </literallayout></para></listitem>
>                 </orderedlist>
>             </para>
>=20
>             <para>
>-                Ultimately, the configuration fragment file needs to be a
>+                The <filename>diffconfig</filename> command creates a
>file that is a
>                 list of Linux kernel <filename>CONFIG_</filename>
>assignments.
>-                It cannot be in <filename>diff</filename> format.
>-                Here is an example of a command that creates your
>-                configuration fragment file.
>-                Regardless of the exact command you use, plan on
>reviewing
>-                the output as you can usually remove some of the
>defaults:
>-                <literallayout class=3D'monospaced'>
>-     $ diff -Nurp config.orig .config | sed -n "s/^\+//p" > frag.cfg
>-                </literallayout>
>+
>                 See the "<link
>linkend=3D'changing-the-configuration'>Changing the Configuration</link>"
>                 section for information on how to use the output as a
>                 configuration fragment.
>--=20
>1.8.3.2
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>


--=20
Darren Hart
Yocto Project - Linux Kernel
Intel Open Source Technology Center





