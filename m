Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08FDFE00D2B; Mon,  4 Mar 2019 21:49:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F66BE00D24
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 21:49:06 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id m12so6187520edv.4
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2019 21:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=X+OyaZEnVlTI1VN1niJR3AWGHUWgurgPl41hbrCUwhI=;
	b=rWAP6Nv0a5Q8xmIIpf2TIWpPj1Du7iV1qlr+EkrnUqvgisReMqRfX6FiuDg90yeWp7
	exLoH51emnOTcI03wjV4UupXPjObJt5LS6QCHtDZ9nQMHSzhjeYmlZSCVN3CyxI1gF68
	YF0qj/FhY9+8fAwWizr9VegBeauA7ISiRY2NG5h1AQKBc4bvp4wimwcq1QkE4QwmnJ+k
	DByKoyCnVMZ3vXPXPLeOVUb1bqsmUTdP/+/Cn72vNQyAjUYcTmIRlb/hBemUadePiaye
	Y56HUzrDlFsJ4IMQzLoTb9AfevW3tPH4FsQNfwoGWsooJjADEczOsNGw0J0rIAJ2+0eX
	Cf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=X+OyaZEnVlTI1VN1niJR3AWGHUWgurgPl41hbrCUwhI=;
	b=sn7YtzL/Pz79WZWl8czItfw8sdi2YxymOXr3bDYAyUrFCOAh02jXLCDF19pVmJmmkz
	MxkyyizfgRIW444HdgZcHPG/FVKiSFZRPYiz3saPS5l8t/ZN7j3HCIl6dxWiM5qNENBY
	DIuCbV+nLNSOJ8P/CymZG430Jlq5fbusgVCEQnjcT7LEWQSaiTy2CESBPSh8sz0bEZoI
	3KmD+5uhzllsnmkiDqzRe2NxcMheE8g4hyk6WHfW64NemnMjI+XGpB3Cdaa4h4QaM1Yt
	w33YL8REetwy1rAqS0+3cICB9ghn1eBZ9EzNnZo4oicdVaICD9ePUuY+rQNMixIJZQGJ
	+r7A==
X-Gm-Message-State: APjAAAVYCjsXfIOK8kzV2vwIp781zFnx64AJwpckKt0IcZd84mnBw8eU
	LlW1FcwP3ysD2yiqaoDgPKebJ6HYGQ/MOJDZS1c=
X-Google-Smtp-Source: APXvYqzw3neYHt+O1xWkEGp06lrlF4bq3eWkFgDO4/ge1UqshMtf9RWVDw5x5y6CEjp+g3/nG0cC2V3iNmTCBLsZrYE=
X-Received: by 2002:a50:eb83:: with SMTP id y3mr17959373edr.222.1551764945490; 
	Mon, 04 Mar 2019 21:49:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKpuFdcLgRthdgOVV+Pcue9tpB5LrSd8yCScV=BNm-MDZz7oNg@mail.gmail.com>
	<0ded533a-0445-11ed-42c6-74656c2d2d2d@windriver.com>
In-Reply-To: <0ded533a-0445-11ed-42c6-74656c2d2d2d@windriver.com>
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Tue, 5 Mar 2019 06:48:54 +0100
Message-ID: <CAKpuFddq+Q4CwOEPWvj4HTX-ZUshyiagGBHz=GBQCLBWTX6uig@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Best practice dynamic service file
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
X-List-Received-Date: Tue, 05 Mar 2019 05:49:07 -0000
Content-Type: multipart/alternative; boundary="00000000000059d68e0583526ea8"

--00000000000059d68e0583526ea8
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip, it is a bit sleeker than pulling in an python script.

Den tis 5 mars 2019 kl 02:05 skrev ChenQi <Qi.Chen@windriver.com>:

> On 03/05/2019 05:46 AM, Jonas Andersson wrote:
>
> Hi,
>
> I have an systemd recipe to start an application as a service, i have
> included an service file.
> Now I am looking for an solution to be able to set settings in the service
> file from Yocto variables, i have found recipes that use python to build
> files during build.
>
> What is best practice for this?
>
> /Jonas
>
>
>
> Use placeholders like VAR_TO_SUBSTITUDE, and then use 'sed' command to
> replace it in do_install.
> e.g.
> sed -i -e 's/VAR_TO_SUBSTITUDE/${VAR_IN_RECIPE}/g' path/to/my.service
>
> Best Regards,
> Chen Qi
>

--00000000000059d68e0583526ea8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the tip, it is a bit sleeker than pulling =
in an python script.<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Den tis 5 mars 2019 kl 02:05 skrev ChenQi &lt=
;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a>&gt;:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-2925871917591106397moz-cite-prefix">On 03/05/201=
9 05:46 AM, Jonas Andersson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I have an systemd recipe to start an application as a
          service, i have included an service file.</div>
        <div>Now I am looking for an solution to be able to set settings
          in the service file from Yocto variables, i have found recipes
          that use python to build files during build.</div>
        <div><br>
        </div>
        <div>What is best practice for this?</div>
        <div><br>
        </div>
        <div>/Jonas</div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-2925871917591106397mimeAttachmentHeader">=
</fieldset>
      <br>
    </blockquote>
    <br>
    Use placeholders like VAR_TO_SUBSTITUDE, and then use &#39;sed&#39; com=
mand
    to replace it in do_install.<br>
    e.g.<br>
    sed -i -e &#39;s/VAR_TO_SUBSTITUDE/${VAR_IN_RECIPE}/g&#39;
    path/to/my.service<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
  </div>

</blockquote></div>

--00000000000059d68e0583526ea8--
