Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF310E014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:16:38 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id n9so415865oag.36
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:16:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=5sDFacsMHX3Bw5CVO6n331jp8YT6a4Rsd4L42mK8ksI=;
	b=Ez+r6kFkU7u+trxhIL5SRiQSdRL19BRJNMnYkcYqdfGCz3LeL0W2V9E/6Nq/Fg1dbt
	0V6OyycH95+43xxkGdJ3BVBxE62PKHxpa3ZUzhXb/n3S9wApXzlzzUVuRHUsSMDC5OSg
	MDsXVVhHWW9+QOGKCyrY1KBcjoEgct1HB3WDdUDyDiCm9wHkU12SzfG6RyoNa8qoqo5f
	GPNRaaKXhQL2OhM4v9xU0MjWPkTDgYNtElrpC5KLFWMIvhM4VOWLU4mzhq3H5LUC6/FA
	cBtjjiQOf6QjrjMGK5xYDjXxKGx/B4fkyPYSEAl+inzNh3V8HV8fRnFhOc1CgT1Du2Il
	Dd2g==
X-Received: by 10.182.61.46 with SMTP id m14mr3518087obr.58.1372317397695;
	Thu, 27 Jun 2013 00:16:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.25.133 with HTTP; Thu, 27 Jun 2013 00:16:17 -0700 (PDT)
In-Reply-To: <CAE_REAvJT8ViDcJuHTUUheE795xzMpfFWKB-fEHZn5tiZkHuGQ@mail.gmail.com>
References: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
	<51CB0AB3.2070107@r-finger.com>
	<CAE_REAvJT8ViDcJuHTUUheE795xzMpfFWKB-fEHZn5tiZkHuGQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 27 Jun 2013 09:16:17 +0200
Message-ID: <CAP71Wjxdu0+kt5GtKkmkM-uCzic+yvz+FrN40Prh9DMbdhpu8g@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
X-Gm-Message-State: ALoCoQn4ZrofcMgQWhkFtQQy+A5v+lhNSfcY56AKt8hbBsMG91zTI/VnvFmHWs64wnbqmLn8KAAa
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: run commands after installation
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
X-List-Received-Date: Thu, 27 Jun 2013 07:16:39 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1ede20253dd04e01d8b78

--e89a8fb1ede20253dd04e01d8b78
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jun 27, 2013 at 8:38 AM, Gaurang Shastri <gmshastri@gmail.com>wrote:

> Hi,
>
> You need to do something like below:
>
> pkg_postinst() {
>
> net-snmp-config --create-snmpv3-user -a "my_password" myuser
> }
>
> try with above and it should work :)
>

note it should be

pkg_postinst_PACKAGENAME(), so in most cases: pkg_postinst_${PN}()

also, see:

http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#post-installation-scripts
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usingpoky-extend-addpkg-postinstalls

--e89a8fb1ede20253dd04e01d8b78
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 27, 2013 at 8:38 AM, Gaurang Shastri <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmshastri@gmail.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><div>Hi,<br><br></div>You need to do something like b=
elow:<br>

<br></div>pkg_postinst() {<div class=3D"im"><br><div>net-snmp-config --crea=
te-snmpv3-user -a &quot;my_password&quot; myuser<br>
</div><div>}<br><br></div></div><div>try with above and it should work :)</=
div></blockquote></div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">note it should be=A0</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">

pkg_postinst_PACKAGENAME(), so in most cases: pkg_postinst_${PN}()</div><di=
v class=3D"gmail_extra"><br></div>also, see:</div><div class=3D"gmail_extra=
"><br><a href=3D"http://www.yoctoproject.org/docs/current/mega-manual/mega-=
manual.html#post-installation-scripts">http://www.yoctoproject.org/docs/cur=
rent/mega-manual/mega-manual.html#post-installation-scripts</a><br>

</div><div class=3D"gmail_extra"><a href=3D"http://www.yoctoproject.org/doc=
s/current/mega-manual/mega-manual.html#usingpoky-extend-addpkg-postinstalls=
">http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usi=
ngpoky-extend-addpkg-postinstalls</a><br>

</div></div>

--e89a8fb1ede20253dd04e01d8b78--
