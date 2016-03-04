Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E065E00BE2; Fri,  4 Mar 2016 11:20:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB0D1E00B37
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 11:20:04 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id 124so40337895pfg.0
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 11:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=A2IV9zZPjiCSRxwcADuiD1RXY2/3HhEqyM8k0EvUICQ=;
	b=rsVXIAdbNOvB92nHBXa7p24V8e6syziHiueGv0HoYIndOHeoaa6Jy/7u8ziq++u6AT
	XDvzB8jfg382ualSXFLzrC044gpqaLlsFGN/K/cNgy6Qr/nb56bB0g3vQcRv2v5A5ELq
	M/t0RJXxboTmwAvM2MpQnkTk7nnJfMc+zsTGtbplLWgkTlWqXuFOy0TVBtqVtBAVjfSm
	nNMBo1ZVLF5forwPv+tRF9QGaY9/aCOBV7TOg2UI4E+cfGWEqgqCDDcQDVQObX7RKnI8
	Ib+emWjmjzLxI/b7UMk0QoQbHAUH/KBmw9C0pP/JbM3rPYdLDcLfF2NSH7B0BcwrAc3N
	zoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=A2IV9zZPjiCSRxwcADuiD1RXY2/3HhEqyM8k0EvUICQ=;
	b=ETUjlxAmztw58ao22xOroL+FeX6Jakc+9gef/oh2pYVHqTTHs+2E788XkxmPZWp2/X
	EqKnoh3zYtfbiuPVM8I6parsTmT4LZiEl26PcDb/ZY5aQGYZPI9D46uCEYKsZDe2Bkxp
	eouEBaS9/S91RnjozKssQc7B0jkHxowa2zgt0PG2nInhdyAfw3Ihkspf2nIaqo6FgWnN
	t65O3CKVAe6LnMPryATKVlKReDNdJScVxhE7SSQsypT5buqJ/GuCTtOtQgIMZAHveKPc
	6zs6VNLEZQfhnI9WK3irgOgabdibmhwHt4VbB2mt4piFQTO1YyMnqCx/LHL29APCj5IQ
	7SAw==
X-Gm-Message-State: AD7BkJJ9Ir3/0ppRHfY92zV7ttAkMihsMIvz++wwaNX9p8ZhcFOj+KPeQbL9Kd6MljiKIg==
X-Received: by 10.98.1.197 with SMTP id 188mr14581808pfb.8.1457119203735;
	Fri, 04 Mar 2016 11:20:03 -0800 (PST)
Received: from Akusters-laptop.local ([2601:202:4000:1239:c524:681e:792:5d3])
	by smtp.googlemail.com with ESMTPSA id
	v11sm7242236pfa.60.2016.03.04.11.20.01 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 Mar 2016 11:20:02 -0800 (PST)
To: yocto@yoctoproject.org
References: <1457110149-4756-1-git-send-email-belen.barros.pena@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56D9DFE2.3000107@gmail.com>
Date: Fri, 4 Mar 2016 11:20:02 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1457110149-4756-1-git-send-email-belen.barros.pena@linux.intel.com>
Subject: Re: [PATCH] documentation: remove all references to Hob
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
X-List-Received-Date: Fri, 04 Mar 2016 19:20:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 3/4/16 8:49 AM, Belen Barros Pena wrote:
> From: Belen Barros Pena <belen.barros.pena@intel.com>
>
> Hob and the packageinfo class have now been removed from the code base.
> This patch removes all references to:
>
> * Hob
> * meta-hob
> * packageinfo and
> * BBLAYERS_NON_REMOVABLE
>
> from the documentation.
the build appliance page refers to HOB. does it need to updated?

https://www.yoctoproject.org/documentation/build-appliance-manual

- armin
>
> So long, Hob, and thanks for all the fish.
>
> Signed-off-by: Belen Barros Pena <belen.barros.pena@intel.com>
> ---
>  documentation/bsp-guide/bsp.xml                    |  5 --
>  documentation/dev-manual/dev-manual-intro.xml      |  5 --
>  documentation/dev-manual/dev-manual-model.xml      | 47 -------------------
>  documentation/ref-manual/introduction.xml          |  4 --
>  documentation/ref-manual/migration.xml             | 14 +-----
>  documentation/ref-manual/ref-bitbake.xml           |  2 +-
>  documentation/ref-manual/ref-classes.xml           | 16 -------
>  documentation/ref-manual/ref-structure.xml         |  3 +-
>  documentation/ref-manual/ref-variables.xml         | 54 ----------------------
>  .../toaster-manual/toaster-manual-intro.xml        | 19 --------
>  10 files changed, 3 insertions(+), 166 deletions(-)
>
> diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
> index ec39ec9..8cf2a1e 100644
> --- a/documentation/bsp-guide/bsp.xml
> +++ b/documentation/bsp-guide/bsp.xml
> @@ -1403,11 +1403,6 @@
>          /usr/local/src/yocto/meta-yocto-bsp \
>          /usr/local/src/yocto/meta-myarm \
>          "
> -
> -     BBLAYERS_NON_REMOVABLE ?= " \
> -        /usr/local/src/yocto/meta \
> -        /usr/local/src/yocto/meta-yocto \
> -        "
>                      </literallayout>
>                      Adding the layer to this file allows the build system to build the BSP and
>                      the <filename>yocto-kernel</filename> tool to be able to find the layer and
> diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/dev-manual/dev-manual-intro.xml
> index e350882..5affa86 100644
> --- a/documentation/dev-manual/dev-manual-intro.xml
> +++ b/documentation/dev-manual/dev-manual-intro.xml
> @@ -169,11 +169,6 @@
>                      release of the Yocto Project.
>                      </para></listitem>
>                  <listitem><para><emphasis>
> -                    <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>:</emphasis>
> -                    A graphical user interface for BitBake.
> -                    Hob's primary goal is to enable a user to perform common tasks more easily.
> -                    </para></listitem>
> -                <listitem><para><emphasis>
>                      <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/toaster'>Toaster</ulink>:</emphasis>
>                      An Application Programming Interface (API) and web-based
>                      interface to the OpenEmbedded build system, which uses
> diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
> index 984d08d..489547d 100644
> --- a/documentation/dev-manual/dev-manual-model.xml
> +++ b/documentation/dev-manual/dev-manual-model.xml
> @@ -48,12 +48,6 @@
>               Toaster provides an efficient interface to the OpenEmbedded build
>               that allows you to start builds and examine build statistics.
>               </para></listitem>
> -         <listitem><para><emphasis>Image Development using Hob:</emphasis>
> -             You can use the <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>
> -             to build custom operating system images within the build
> -             environment.
> -             Hob provides an efficient interface to the OpenEmbedded build system.
> -             </para></listitem>
>           <listitem><para><emphasis>Using a Development Shell:</emphasis>
>               You can use a <filename>devshell</filename> to efficiently debug
>               commands or simply edit packages.
> @@ -3189,47 +3183,6 @@
>      </para>
>  </section>
>  
> -<section id='image-development-using-hob'>
> -    <title>Image Development Using Hob</title>
> -
> -    <para>
> -        The <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink> is a graphical user interface for the
> -        OpenEmbedded build system, which is based on BitBake.
> -        You can use the Hob to build custom operating system images within the Yocto Project build environment.
> -        Hob simply provides a friendly interface over the build system used during development.
> -        In other words, building images with the Hob lets you take care of common build tasks more easily.
> -    </para>
> -
> -    <para>
> -        For a better understanding of Hob, see the project page at
> -        <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'></ulink>
> -        on the Yocto Project website.
> -        If you follow the "Documentation" link from the Hob page, you will
> -        find a short introductory training video on Hob.
> -        The following lists some features of Hob:
> -        <itemizedlist>
> -            <listitem><para>You can setup and run Hob using these commands:
> -            <literallayout class='monospaced'>
> -     $ source oe-init-build-env
> -     $ hob
> -            </literallayout></para></listitem>
> -            <listitem><para>You can set the
> -                <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
> -                for which you are building the image.</para></listitem>
> -            <listitem><para>You can modify various policy settings such as the
> -                package format with which to build,
> -                the parallelism BitBake uses, whether or not to build an
> -                external toolchain, and which host to build against.
> -                </para></listitem>
> -            <listitem><para>You can manage
> -                <link linkend='understanding-and-creating-layers'>layers</link>.</para></listitem>
> -            <listitem><para>You can select a base image and then add extra packages for your custom build.
> -                </para></listitem>
> -            <listitem><para>You can launch and monitor the build from within Hob.</para></listitem>
> -        </itemizedlist>
> -    </para>
> -</section>
> -
>  <section id="platdev-appdev-devshell">
>      <title>Using a Development Shell</title>
>  
> diff --git a/documentation/ref-manual/introduction.xml b/documentation/ref-manual/introduction.xml
> index 57e4a25..e82f834 100644
> --- a/documentation/ref-manual/introduction.xml
> +++ b/documentation/ref-manual/introduction.xml
> @@ -192,10 +192,6 @@
>              supported Linux distribution, instances might exist where you
>              encounter a problem while using the Yocto Project on a specific
>              distribution.
> -            For example, the CentOS 6.4 distribution does not include the
> -            Gtk+ 2.20.0 and PyGtk 2.21.0 (or higher) packages, which are
> -            required to run
> -            <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>.
>          </note>
>      </section>
>  
> diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-manual/migration.xml
> index 7f1ef8c..670e1c1 100644
> --- a/documentation/ref-manual/migration.xml
> +++ b/documentation/ref-manual/migration.xml
> @@ -125,7 +125,7 @@
>                  reference hardware Board Support Packages (BSPs), respectively:
>                  <filename>meta-yocto</filename> and
>                  <filename>meta-yocto-bsp</filename>.
> -                When running BitBake or Hob for the first time after upgrading,
> +                When running BitBake for the first time after upgrading,
>                  your <filename>conf/bblayers.conf</filename> file will be
>                  updated to handle this change and you will be asked to
>                  re-run or restart for the changes to take effect.
> @@ -1446,18 +1446,6 @@
>          </section>
>      </section>
>  
> -    <section id='migration-1.6-directory-layout-changes'>
> -        <title>Directory Layout Changes</title>
> -
> -        <para>
> -            The <filename>meta-hob</filename> layer has been removed from
> -            the top-level of the
> -            <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
> -            The contents of this layer are no longer needed by the Hob
> -            user interface for building images and toolchains.
> -        </para>
> -    </section>
> -
>      <section id='migration-1.6-package-test-ptest'>
>          <title>Package Test (ptest)</title>
>  
> diff --git a/documentation/ref-manual/ref-bitbake.xml b/documentation/ref-manual/ref-bitbake.xml
> index dc402db..90afe93 100644
> --- a/documentation/ref-manual/ref-bitbake.xml
> +++ b/documentation/ref-manual/ref-bitbake.xml
> @@ -414,7 +414,7 @@ Options:
>    -l DEBUG_DOMAINS, --log-domains=DEBUG_DOMAINS
>                          Show debug logging for the specified logging domains
>    -P, --profile         Profile the command and save reports.
> -  -u UI, --ui=UI        The user interface to use (e.g. knotty, hob, depexp).
> +  -u UI, --ui=UI        The user interface to use (e.g. knotty, depexp).
>    -t SERVERTYPE, --servertype=SERVERTYPE
>                          Choose which server to use, process or xmlrpc.
>    --revisions-changed   Set the exit code depending on whether upstream
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
> index c4f15c9..bf4e5a9 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -2558,22 +2558,6 @@
>      </para>
>  </section>
>  
> -<section id='ref-classes-packageinfo'>
> -    <title><filename>packageinfo.bbclass</filename></title>
> -
> -    <para>
> -        The <filename>packageinfo</filename> class
> -        gives a BitBake user interface the ability to retrieve information
> -        about output packages from the <filename>pkgdata</filename> files.
> -    </para>
> -
> -    <para>
> -        This class is enabled automatically when using the
> -        <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>
> -        user interface.
> -    </para>
> -</section>
> -
>  <section id='ref-classes-patch'>
>      <title><filename>patch.bbclass</filename></title>
>  
> diff --git a/documentation/ref-manual/ref-structure.xml b/documentation/ref-manual/ref-structure.xml
> index 725435e..578b381 100644
> --- a/documentation/ref-manual/ref-structure.xml
> +++ b/documentation/ref-manual/ref-structure.xml
> @@ -738,8 +738,7 @@
>          <para>
>              Be careful when deleting files in this directory.
>              You can safely delete old images from this directory (e.g.
> -            <filename>core-image-*</filename>, <filename>hob-image-*</filename>,
> -            etc.).
> +            <filename>core-image-*</filename>).
>              However, the kernel (<filename>*zImage*</filename>, <filename>*uImage*</filename>, etc.),
>              bootloader and other supplementary files might be deployed here prior to building an
>              image.
> diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
> index 71f4ca6..fabce13 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -1134,20 +1134,7 @@
>         /home/scottrif/poky/meta-yocto-bsp \
>         /home/scottrif/poky/meta-mykernel \
>         "
> -
> -     BBLAYERS_NON_REMOVABLE ?= " \
> -       /home/scottrif/poky/meta \
> -       /home/scottrif/poky/meta-yocto \
> -       "
>                      </literallayout>
> -                    <note>
> -                        The
> -                        <link linkend='var-BBLAYERS_NON_REMOVABLE'><filename>BBLAYERS_NON_REMOVABLE</filename></link>
> -                        variable exists only for
> -                        <ulink url='https://www.yoctoproject.org/tools-resources/projects/hob'>Hob</ulink>.
> -                        The OpenEmbedded build system does not use this
> -                        variable.
> -                    </note>
>                  </para>
>  
>                  <para>
> @@ -1157,47 +1144,6 @@
>              </glossdef>
>          </glossentry>
>  
> -        <glossentry id='var-BBLAYERS_NON_REMOVABLE'><glossterm>BBLAYERS_NON_REMOVABLE</glossterm>
> -            <info>
> -                BBLAYERS_NON_REMOVABLE[doc] = "Lists core layers that cannot be removed from the bblayers.conf file."
> -            </info>
> -            <glossdef>
> -                <para role="glossdeffirst">
> -<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
> -                    Lists core layers that cannot be removed from the
> -                    <filename>bblayers.conf</filename> file during a build
> -                    using the
> -                    <ulink url='https://www.yoctoproject.org/tools-resources/projects/hob'>Hob</ulink>.
> -                    <note>
> -                        When building an image outside of Hob, the OpenEmbedded
> -                        build system ignores this variable.
> -                    </note>
> -                </para>
> -
> -                <para>
> -                    In order for BitBake to build your image using Hob, your
> -                    <filename>bblayers.conf</filename> file must include the
> -                    <filename>meta</filename> and <filename>meta-yocto</filename>
> -                    core layers.
> -                    Here is an example that shows these two layers listed in
> -                    the <filename>BBLAYERS_NON_REMOVABLE</filename> statement:
> -                    <literallayout class='monospaced'>
> -     BBLAYERS = " \
> -       /home/scottrif/poky/meta \
> -       /home/scottrif/poky/meta-yocto \
> -       /home/scottrif/poky/meta-yocto-bsp \
> -       /home/scottrif/poky/meta-mykernel \
> -       "
> -
> -     BBLAYERS_NON_REMOVABLE ?= " \
> -       /home/scottrif/poky/meta \
> -       /home/scottrif/poky/meta-yocto \
> -       "
> -                    </literallayout>
> -                </para>
> -            </glossdef>
> -        </glossentry>
> -
>          <glossentry id='var-BBMASK'><glossterm>BBMASK</glossterm>
>              <info>
>                  BBMASK[doc] = "Prevents BitBake from processing specific recipes or recipe append files."
> diff --git a/documentation/toaster-manual/toaster-manual-intro.xml b/documentation/toaster-manual/toaster-manual-intro.xml
> index 278c33f..ee1dcba 100644
> --- a/documentation/toaster-manual/toaster-manual-intro.xml
> +++ b/documentation/toaster-manual/toaster-manual-intro.xml
> @@ -14,25 +14,6 @@
>          remote build servers.
>      </para>
>  
> -    <note>
> -        <para>
> -            This release of Toaster does allow you to configure and initiate
> -            builds.
> -            However, you cannot use Toaster to customize image recipes, which
> -            still must either be done by hand or through
> -            <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>.
> -            As Toaster matures, it eventually will equal and surpass Hob
> -            functionality, at which time Hob will be deprecated.
> -        </para>
> -
> -        <para>
> -            For more information on Hob,
> -            see the
> -            "<ulink url='&YOCTO_DOCS_DEV_URL;#image-development-using-hob'>Image Development Using Hob</ulink>"
> -           section in the Yocto Project Development Manual.
> -        </para>
> -    </note>
> -
>      <section id='intro-features'>
>          <title>Toaster Features</title>
>  


