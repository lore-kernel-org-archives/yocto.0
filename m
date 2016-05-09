Return-Path: <tom.zanussi@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB105E007F2; Mon,  9 May 2016 11:03:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5376CE007E1
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 11:03:00 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2016 11:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,601,1455004800"; d="scan'208";a="699287752"
Received: from tzanussi-mobl.amr.corp.intel.com ([10.254.118.22])
	by FMSMGA003.fm.intel.com with ESMTP; 09 May 2016 11:02:44 -0700
Message-ID: <5730D0C3.4010905@linux.intel.com>
Date: Mon, 09 May 2016 13:02:43 -0500
From: Tom Zanussi <tom.zanussi@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: srifenbark@gmail.com, yocto@yoctoproject.org
References: <cover.1462292535.git.tom.zanussi@linux.intel.com>
	<560ec02d15e8e7338ebf79c2439afc9e5a6cd0b1.1462292535.git.tom.zanussi@linux.intel.com>
In-Reply-To: <560ec02d15e8e7338ebf79c2439afc9e5a6cd0b1.1462292535.git.tom.zanussi@linux.intel.com>
Subject: Re: [PATCH v2 1/2] kernel-dev: Fix the locations of .config and source directory
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
X-List-Received-Date: Mon, 09 May 2016 18:03:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

ping

On 05/03/2016 11:28 AM, Tom Zanussi wrote:
> The locations of the kernel .config file and source directory moved a
> couple releases ago; update the documentation accordingly.
>
> Also, add a note explaining how to expand variables, which serves a
> couple of purposes:
>
>    * For curious readers, shows them how to demystify where these
>      variables come from and how they're used.
>    * For suspicious readers, shows them how they can verify that the
>      variables in the documentation are actually correct.
>
> Fixes [YOCTO #9124].
>
> Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
> ---
>   documentation/kernel-dev/kernel-dev-common.xml | 20 +++++++++++++++-----
>   1 file changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
> index 261471c..5bd12be 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -384,9 +384,7 @@
>
>               <para>
>                   The resulting <filename>.config</filename> file is
> -                located in
> -                <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename> under the
> -                <filename>linux-${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink><filename>}-${<ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_KERNEL_TYPE'><filename>LINUX_KERNEL_TYPE</filename></ulink>}-build</filename> directory.
> +                located in the build directory,  <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-B'><filename>B</filename></ulink><filename>}</filename>, which expands to <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename><filename>/linux-</filename><filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink><filename>}-${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_KERNEL_TYPE'><filename>LINUX_KERNEL_TYPE</filename></ulink><filename>}-build</filename>.
>                   You can use the entire <filename>.config</filename> file as the
>                   <filename>defconfig</filename> file as described in the
>                   "<link linkend='changing-the-configuration'>Changing the Configuration</link>" section.
> @@ -396,6 +394,19 @@
>                   section in the Yocto Project Development Manual.
>               </para>
>
> +            <note>
> +              If you're ever confused about what a variable expands
> +              to, you can determine that unequivocally by looking at
> +              the output of the <filename>bitbake -e</filename> command:
> +
> +	      <literallayout class='monospaced'>
> +     $ bitbake -e virtual/kernel
> +              </literallayout>
> +
> +	      Search the output for the variable you're interested in
> +	      and you can see exactly how it's expanded and used.
> +            </note>
> +
>               <para>
>                   A better method is to create a configuration fragment using the
>                   differences between two configuration files: one previously
> @@ -512,8 +523,7 @@
>                   </literallayout>
>                   Taking this step ensures you have the sources prepared
>                   and the configuration completed.
> -                You can find the sources in the
> -                <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}/linux</filename> directory.
> +                You can find the sources in the symlinked <filename>source/</filename> directory just off the build directory, in other words <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-B'><filename>B</filename></ulink><filename>}/source</filename>, which expands to <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename><filename>/linux-</filename><filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink><filename>}-${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_KERNEL_TYPE'><filename>LINUX_KERNEL_TYPE</filename></ulink><filename>}-build/source</filename>.  The directory pointed to by the <filename>source/</filename> symlink is also known as <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-STAGING_KERNEL_DIR'><filename>STAGING_KERNEL_DIR</filename></ulink><filename>}</filename>
>               </para>
>
>               <para>
>


