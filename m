Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40B51E00D1C; Fri,  6 Sep 2019 04:11:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76090E00AE6
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 04:11:56 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46Pvyg30WWz5c;
	Fri,  6 Sep 2019 13:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1567768315;
	bh=EzhvnRNoln8VUU6LhRsUr/bD6U13mOG65xzJIRG4kYU=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Xx5MgCeds/TBPIKHshYiiL7zp/NZ2D9dzA2d05Q7VPtlSZrAoZNbFipmEGAqZQ1Pa
	kB0kSNekKqXyDgIGn0YCNy3xI6ykF8+QTeM6EAb+2mbKXPO8O5u38iGt8nMcInqDf3
	sC4ooULy/4vqPum0gOUpPUrqg5h9uFSXx1WHBk1toMD0U+b35oSb0wenGFwQAJG0Zz
	1VLKGwqCJL1zF4m5JVX3kHmjuaQpYygZ99D209z3VjfEpm2HHiCvUZqBapSkqxkaU+
	6DXlX9ngbKUdyJlmEicnz49h/kM3eeiZ0V9eTCawJtR0GcbKNuZZvO3hTeCeM/yrWB
	ksynjjlWz3UG42ki4RqteNrrQUG2IlJ3jRRTc/4EGL4iQ7PWWDcs9SOyCbw2w4JLfu
	qHaG+sxX2EE2ry8kV+mdjGxFfdyC99BIDuyjnGJghhcDXbKvdyM6oF14d9+WL50ct8
	KkN6KKDXWJnq5BKktSgte45HpJEzRkJYmp049uUODX/hpMdhbWh8zdAOkzuO217tDQ
	zaHE+un4zLR4plPdW66WIlEiQoC5Uf6sdShAz2cA4WAw3wIA8QpFj562kj/rybRLE8
	OXNWy5UK/RVEQvRHKE7tuDyT7f4ARkPv2TgekuU/lO+Iv+KxrX+fp1G1ljeTuOPiS6
	4ctsrM+8CXXtly/Uv+26EbYs=
Date: Fri, 6 Sep 2019 14:11:53 +0300
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Message-ID: <20190906111153.GB7337@localhost>
References: <20190715084410.12496-1-bunk@stusta.de>
MIME-Version: 1.0
In-Reply-To: <20190715084410.12496-1-bunk@stusta.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [yocto-docs][PATCH] ref-manual: Remove documentation for the removed bluez5 distro feature
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
X-List-Received-Date: Fri, 06 Sep 2019 11:11:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

ping

On Mon, Jul 15, 2019 at 11:44:10AM +0300, Adrian Bunk wrote:
> bluez4 was removed even from meta-oe 2 years ago,
> which made made the bluez5 feature for selecting between
> bluez4 and bluez5 mandatory for using the bluetooth feature.
> 
> The backfilled bluez5 feature has been removed,
> including the bluetooth class that helped recipes
> for selecting between bluez4/bluez5.
> Recipes can replace ${BLUEZ} with bluez5.
> 
> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> ---
>  documentation/ref-manual/ref-classes.xml  | 17 -----------------
>  documentation/ref-manual/ref-features.xml | 21 ---------------------
>  2 files changed, 38 deletions(-)
> 
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
> index ece47e757b..37619e382d 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -318,23 +318,6 @@
>      </para>
>  </section>
>  
> -<section id='ref-classes-bluetooth'>
> -    <title><filename>bluetooth.bbclass</filename></title>
> -
> -    <para>
> -        The <filename>bluetooth</filename> class defines a variable that
> -        expands to the recipe (package) providing core
> -        bluetooth support on the platform.
> -    </para>
> -
> -    <para>
> -        For details on how the class works, see the
> -        <filename>meta/classes/bluetooth.bbclass</filename> file in the Yocto
> -        Project
> -        <link linkend='source-directory'>Source Directory</link>.
> -    </para>
> -</section>
> -
>  <section id='ref-classes-buildhistory'>
>      <title><filename>buildhistory.bbclass</filename></title>
>  
> diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
> index b057d2d040..44ba67cf50 100644
> --- a/documentation/ref-manual/ref-features.xml
> +++ b/documentation/ref-manual/ref-features.xml
> @@ -154,27 +154,6 @@
>                      </para></listitem>
>                  <listitem><para><emphasis>bluetooth:</emphasis> Include
>                      bluetooth support (integrated BT only).</para></listitem>
> -                <listitem><para><emphasis>bluez5:</emphasis> Include
> -                    BlueZ Version 5, which provides core Bluetooth layers and
> -                    protocols support.
> -                    <note>
> -                        The default value for the
> -                        <filename>DISTRO FEATURES</filename> variable includes
> -                        "bluetooth", which causes bluez5 to be backfilled in
> -                        for bluetooth support.
> -                        If you do not want bluez5 backfilled and would rather
> -                        use bluez4, you need to use the
> -                        <link linkend='var-DISTRO_FEATURES_BACKFILL_CONSIDERED'><filename>DISTRO_FEATURES_BACKFILL_CONSIDERED</filename></link>
> -                        variable as follows:
> -                        <literallayout class='monospaced'>
> -     DISTRO_FEATURES_BACKFILL_CONSIDERED = "bluez5"
> -                        </literallayout>
> -                        Setting this variable tells the OpenEmbedded build
> -                        system that you have considered but ruled
> -                        out using the bluez5 feature and that bluez4 will be
> -                        used.
> -                    </note>
> -                    </para></listitem>
>                  <listitem><para><emphasis>cramfs:</emphasis> Include CramFS
>                      support.</para></listitem>
>                  <listitem><para><emphasis>directfb:</emphasis>
> -- 
> 2.17.1
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


