Return-Path: <adraszik@digisoft.tv>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDBA9E00DF3; Wed, 23 Sep 2015 01:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A6A1E0076A
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 01:20:15 -0700 (PDT)
Received: by lahg1 with SMTP id g1so41411629lah.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 01:20:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=vLUP/rCkZmQ8sJaDL5Ql17BnphV3LeLOYG1NFi0Ba6o=;
	b=UOb6v+s9mYBeuOOLeAIcpibX9vUNbnOb/2XbWWK96ePWW3UB7yH3yfmWHqjaD2o+7z
	hj6/gLawN9JCCZrRW4p3gzSo6NpMOwUa8VHhagKMOQdiqdVrEnWSezPmi2uZok/jNtfx
	as/W6sdCQ41WtnguGiWuSx7cRx56JOl9KxuEDl/6cC0kIzZ+vzZDo29vTIl6JdvYqgyX
	5+5Imswsq5+O57T662bzidZzAxPL5a+i4RfTXU9+NZ2k0b0JZ0rWbpLWnGiPfTpmo9e7
	IQXNYBA2JgCKemWpA4W3vIsq54pBI1FkdXRm9TNuXYb2IFjMsfq2P7YaWCQfb/eupQUn
	Ufzw==
X-Gm-Message-State: ALoCoQmisqi914B+wJPvulO6M7UcQow6olupPgC1HyI8VO876LoeQ99Y6Jfe9rbmISQi7a9B54GB
MIME-Version: 1.0
X-Received: by 10.112.137.105 with SMTP id qh9mr11204443lbb.54.1442996414282; 
	Wed, 23 Sep 2015 01:20:14 -0700 (PDT)
Received: by 10.25.210.72 with HTTP; Wed, 23 Sep 2015 01:20:14 -0700 (PDT)
In-Reply-To: <1438070678-10554-1-git-send-email-adraszik@digisoft.tv>
References: <20150727163405.GE307@jama>
	<1438070678-10554-1-git-send-email-adraszik@digisoft.tv>
Date: Wed, 23 Sep 2015 09:20:14 +0100
Message-ID: <CAJvP4ezDm4jsAFH1Q7sj4i7+bcNe-3-NeQ_F32mVGdZwDR1nvQ@mail.gmail.com>
From: =?UTF-8?Q?Andr=C3=A9_Draszik?= <adraszik@digisoft.tv>
To: yocto@yoctoproject.org
Cc: scott.m.rifenbark@intel.com
Subject: Re: [yocto-docs][PATCH] ref-manual: clarify allarch wrt RDPENDS and TUNE_PKGARCH
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
X-List-Received-Date: Wed, 23 Sep 2015 08:20:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Is there anything wrong with this patch?


Cheers,
Andre'


On 28 July 2015 at 09:04,  <adraszik@digisoft.tv> wrote:
> From: Andr=C3=A9 Draszik <git@andred.net>
>
> See e.g.
> http://permalink.gmane.org/gmane.comp.handhelds.openembedded/64067
>
> Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
> ---
>  documentation/ref-manual/ref-classes.xml | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref=
-manual/ref-classes.xml
> index d482ca0..a9b2f3c 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -51,6 +51,22 @@
>          that produce executable binaries (such as building the cross-com=
piler
>          and a C library as pre-requisites, and splitting out of debug sy=
mbols
>          during packaging).
> +        <note>
> +            Unlike e.g. Debian, OpenEmbedded recipes that produce packag=
es
> +            which
> +            <link linkend=3D'var-RDEPENDS'><filename>RDEPENDS</filename>=
</link>
> +            on
> +            <link linkend=3D'var-TUNE_PKGARCH'><filename>TUNE_PKGARCH</f=
ilename></link>
> +            packages should never be made <filename>allarch</filename>, =
even
> +            if they do not produce architecture-specific output. This wo=
uld
> +            cause the do_package_write_* tasks to have different signatu=
res
> +            for
> +            <link linkend=3D'var-MACHINE'><filename>MACHINE</filename></=
link>s
> +            with different
> +            <link linkend=3D'var-TUNE_PKGARCH'><filename>TUNE_PKGARCH</f=
ilename></link>,
> +            thus unnecessary rebuilds every single time an image for a d=
ifferent
> +            MACHINE is built (even without any change to the recipe).
> +        </note>
>      </para>
>
>      <para>
> --
> 2.1.4
>

