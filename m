Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 618BCE00C18; Fri,  9 Nov 2018 07:45:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBCE3E00A0A
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 07:45:06 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id t22-v6so1961957lji.7
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 07:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tJOuvNuRsQXoBrgA/RVI6t1n3LNHuCgbk6Xxc+z4DHc=;
	b=p3S520t+OiTMt8YbptAHVGNp8WgHhWL5K8s8Whc2Hq2R7aIVsUMGRwxIWeu4LzGlka
	X4PbSVpP7UMvoMdW2ydMnmMFwarjPrvvmSOugW7pq4NI2qjzGZwAIr6GVzhyhK6XWHVG
	xwooJQIc1pGzT2ADbSvKVHGdqTbAUh/UMJ54x5U8B7moeRVRKA/3BdRaP8g/dhuZiP9V
	SE19BZuQ2DYX5ARRXC+irftO6kn98cEbFYoVqXTQgXFqwZ5WYDeIXuJoZMndS9xYYYD5
	N692nZToa9CvHX5Es61yAFYmHFWgGVjp5gL1VabXUaUk1IS2Ip6I0UsSEoKrUO0S6wna
	B9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tJOuvNuRsQXoBrgA/RVI6t1n3LNHuCgbk6Xxc+z4DHc=;
	b=AQe6lnpCAZZHVlIoLnF+aDjnAGf6gNL8gRM7GUQpY/lrKoQ7ScwZfplARizg4a7n9T
	7MMWhtFEbMfQsSB7HhtGIr3N7/YGQR7lASef5frxf654G79TOUFDd9jqdihNCZcOoXLE
	iob/upZSmH78i4sdED4vWdmoYSu5hDahYeV+clehkDSepY6eVP0lPb1YmdC4gOk76Ttq
	m6/c7dUCWoXtb0P1r60Lj2y9cIM2Zs46hKrkpgxg+ADIlUqYfSaRSUGxE3D102fRPTfi
	g9BQGKEh8m7UjQA/60m6purf6e44y4WLb9PgnOEFDG6SyLXevh6E5CPsxl9KyBOhQuVr
	7pvA==
X-Gm-Message-State: AGRZ1gLu6y1BGFKsRFz87u2q2syYP+6y8d2f7wYw4FboMTlRQpugVFQO
	sQaBrU/ko6Rdwd5Tg59Vr/zfs7YZy+Jif5FwXG7V10zCH60=
X-Google-Smtp-Source: AJdET5eTH6WeqkglVIRRfanyKuyzf+2ZjyyghzaJebQIL6F2aEMiofW1xQoQb/31vDh0OOyUqo7hd0ThyzDCc38OIwo=
X-Received: by 2002:a2e:9107:: with SMTP id m7-v6mr5990342ljg.23.1541778305810;
	Fri, 09 Nov 2018 07:45:05 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
	<CAJTo0LY1F2fKx3gcsTEY56n2BEUAkoM73nhpSkMt_rzhQKXqMw@mail.gmail.com>
	<CABj1EzH57_FAWJGQdOeqNf3FwOOJxAafxx+=T4ANmUGA-b75LA@mail.gmail.com>
	<CAJTo0La2K+VqcE5WNAbyNsnFkiFazfKcQ5YZ6peTgK2W+=p0XQ@mail.gmail.com>
In-Reply-To: <CAJTo0La2K+VqcE5WNAbyNsnFkiFazfKcQ5YZ6peTgK2W+=p0XQ@mail.gmail.com>
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Fri, 9 Nov 2018 15:44:54 +0000
Message-ID: <CABj1EzEP1Mg5d_cCcsKj68qkwbLYZw2YiLCfE6wV2LTFg3JqKQ@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: non-existent task do_package_write_ipk
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
X-List-Received-Date: Fri, 09 Nov 2018 15:45:08 -0000
Content-Type: multipart/alternative; boundary="0000000000003d932c057a3d3c9c"

--0000000000003d932c057a3d3c9c
Content-Type: text/plain; charset="UTF-8"

Hi Ross,
I had to use IMAGE_PREPROCESS_COMMAND in my own image recipe, the execution
order of the ROOTFS_POSTPROCESS_COMMAND commands didn't work for me.
Thanks for your help.
Donal

On Fri, 9 Nov 2018 at 14:53, Burton, Ross <ross.burton@intel.com> wrote:

> On Fri, 9 Nov 2018 at 14:48, Donal Morrissey <donal.morrissey@gmail.com>
> wrote:
> > Thank you for your help. My build is using a layer which is generating a
> file in a ROOTFS_POSTPROCESS_COMMAND command. I would like to modify this
> file as part of the yocto build, but I'd prefer not to modify/fork this
> layer as it is from a vender.
> >
> > I'm creating my own layer, which will modify the file created in the
> vender layer's ROOTFS_POSTPROCESS_COMMAND command. If I use pkg_postinst,
> then the file will not have been created when pkg_postinst is called,
> because (as far as i understand) the ROOTFS_POSTPROCESS_COMMAND commands
> will only be executed after all packages have been installed on the root
> filesystem image.
>
> You'll have to set your own ROOTFS_POSTPROCESS_COMMAND in your image
> recipe.
>
> Ross
>

--0000000000003d932c057a3d3c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div>I had to use=C2=A0<span style=3D"font-size:13=
px">IMAGE_PREPROCESS_COMMAND in my own image recipe, the execution order of=
 the=C2=A0</span>ROOTFS_POSTPROCESS_COMMAND commands didn&#39;t work for me=
.</div><div>Thanks for your help.</div><div>Donal</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Fri, 9 Nov 2018 at 14:53, Burton, Ross=
 &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 9 Nov 2018 at 14:48=
, Donal Morrissey &lt;<a href=3D"mailto:donal.morrissey@gmail.com" target=
=3D"_blank">donal.morrissey@gmail.com</a>&gt; wrote:<br>
&gt; Thank you for your help. My build is using a layer which is generating=
 a file in a ROOTFS_POSTPROCESS_COMMAND command. I would like to modify thi=
s file as part of the yocto build, but I&#39;d prefer not to modify/fork th=
is layer as it is from a vender.<br>
&gt;<br>
&gt; I&#39;m creating my own layer, which will modify the file created in t=
he vender layer&#39;s ROOTFS_POSTPROCESS_COMMAND command. If I use pkg_post=
inst, then the file will not have been created when pkg_postinst is called,=
 because (as far as i understand) the ROOTFS_POSTPROCESS_COMMAND commands w=
ill only be executed after all packages have been installed on the root fil=
esystem image.<br>
<br>
You&#39;ll have to set your own ROOTFS_POSTPROCESS_COMMAND in your image re=
cipe.<br>
<br>
Ross<br>
</blockquote></div>

--0000000000003d932c057a3d3c9c--
