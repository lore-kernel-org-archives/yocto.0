Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2211E009E7; Thu, 20 Oct 2016 04:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D1CE0097C
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 04:40:48 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id q126so67654585vkd.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 04:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f5nIBG4DZTgHJ6ylRowbepIlc9eKMY/14O50lNBy5uA=;
	b=uHrqDE0PEN3oGoxo7Te/KGtEELhYIJN2vWXLVXlK15vlLe8KxxBaqBS/lubKOr75MM
	h2fUSBzber9yLYTJmyKPjJIG9Ys7Tma0QEnOvApWxxsPpV8LbyaiQ2yM/bk+8sjDpAKb
	GFsj1TT0LJjA+Wpy/+rtD0huiaFCBT1/q4qLLQGpJ0RqBRcJqZQSXRHXI7AxWjmJh2Z4
	VQaNlKpmEtVcNJelT/Arf4xbi8q0t0zmOqZ8rHRqog6bX/gYLzWlWlq5agZL7SzKhxaf
	4/VYYo/jYl3GPmVY80gtRMUPH6rgS1WZh0oF6R6oznNKSs6rrgMQ8mxOAvn4tfi8lMu5
	h08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f5nIBG4DZTgHJ6ylRowbepIlc9eKMY/14O50lNBy5uA=;
	b=F9f7sOFb9qCgxTWqPZ+dSka7f9IJoWvyEiW5iuxThxFnrmjURBP9HFi+WtdUIDkA1d
	Ulug0Dxn9BYqkjVofCrgNSko7fnlZyhp5K783Rh08iXVX+nm7jIwu/tERBTB151THa4U
	Dg1a7XVv0S4OQz/KKY18dR5tY6Ce/x60HDCv+hdJLDQyHbjwP97XUiIXTbsATx83Q+6t
	hXnD9G0jlOj9jhkmL7Gl9tAVCJOsMVERM2zottv5a5A29aQGk3oM5jwUkEIuAy0OJVIR
	iMdDUM1z9XR6DbneJZ5hQxT5ZlPO5gHAIs5mDltdw0aFaKT7wZWVwjTEUlnLinb3HunP
	fi4w==
X-Gm-Message-State: AA6/9RnzjnkvrI6dZX1NbBul4/Yg8muQ0QOHtSanpIqOX/CWl9UQCozPdYQj7KN209Trr5BQjbxbfFP2AKWvFg==
X-Received: by 10.31.194.20 with SMTP id s20mr197936vkf.101.1476963647483;
	Thu, 20 Oct 2016 04:40:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.107.203 with HTTP; Thu, 20 Oct 2016 04:40:47 -0700 (PDT)
In-Reply-To: <CAJTo0LZUvD6MrLLtf4_7uAX9UCutnOAUJeg3aBGubCd4JysTqw@mail.gmail.com>
References: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
	<3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
	<CAJTo0LZUvD6MrLLtf4_7uAX9UCutnOAUJeg3aBGubCd4JysTqw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
Date: Thu, 20 Oct 2016 17:10:47 +0530
Message-ID: <CALLyC8S3vnuxpQpBcPW-SbBtcsKAC+b91Fiw+DnP99x4t7J47g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: libtomcrypt libtomfastmath recipe
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
X-List-Received-Date: Thu, 20 Oct 2016 11:40:51 -0000
Content-Type: multipart/alternative; boundary=001a114393548df381053f4a656b

--001a114393548df381053f4a656b
Content-Type: text/plain; charset=UTF-8

Hi All,

Thank you very much this recipe worked for me.

Thanks and Regards,


On Thu, Oct 20, 2016 at 3:40 AM, Burton, Ross <ross.burton@intel.com> wrote:

> Please considering posting these recipe into meta-oe or similar, tomcrypt
> etc comes up every few months.  And posting a recipe to the list implies
> you want review, right? :)
>
> On 19 October 2016 at 10:12, Markus Volk <f_l_k@t-online.de> wrote:
>
>> DESCRIPTION = "tomcrypt"
>> HOMEPAGE = " http://www.libtom.net" <http://www.libtom.net>
>> LICENSE = "DWTFYW"
>>
> Second worst license known to man.  :(
>
>> LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=71baa
>> cc459522324ef3e2b9e052e8180"
>>
> These URLs are relative to ${S} so just file://LICENSE works.
>
>> SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop \
>> "
>>
>> SRCREV = "${AUTOREV}"
>>
> In general it's recommended to use a fixed SHA and then override SRVREV if
> you need to for testing/CI/whatever.
>
>> PV = "${SRCPV}"
>> PR = "1"
>>
> No need for PR in general.
>
>> S = "${WORKDIR}/git"
>>
>> inherit autotools-brokensep
>>
> Boo.  Is upstream fixable or is it beyond help?
>
>> SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"
>> SRC_URI[sha256sum] = "d0ff89397f9a5fd1d13b1cbc419d5
>> d426e14473135515d72bfcb58e5babf5032"
>>
>> No need for SRC_URI if you're using git fetcher.
>
> Ross
>

--001a114393548df381053f4a656b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>Thank you very much this recipe=
 worked for me.</div><div><br></div><div>Thanks and Regards,</div><div><br>=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Th=
u, Oct 20, 2016 at 3:40 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra">Please considering posting these recipe into meta-oe or =
similar, tomcrypt etc comes up every few months.=C2=A0 And posting a recipe=
 to the list implies you want review, right? :)</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote"><span class=3D"">On 19 October 2016 at =
10:12, Markus Volk <span dir=3D"ltr">&lt;<a href=3D"mailto:f_l_k@t-online.d=
e" target=3D"_blank">f_l_k@t-online.de</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><p>DESCRIPTION =3D &quot;tomcrypt&quot;<br>
      HOMEPAGE =3D <a class=3D"m_-4744676446017759702m_2560613953701911755m=
oz-txt-link-rfc2396E" href=3D"http://www.libtom.net" target=3D"_blank">&quo=
t; http://www.libtom.net&quot;</a><br>
      LICENSE =3D &quot;DWTFYW&quot;<br></p></blockquote></span><div>Second=
 worst license known to man. =C2=A0:(<br></div><span class=3D""><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><p>
      LIC_FILES_CHKSUM =3D
      <a class=3D"m_-4744676446017759702m_2560613953701911755moz-txt-link-r=
fc2396E">&quot;file://${S}/LICENSE;md5=3D71baa<wbr>cc459522324ef3e2b9e052e8=
180&quot;</a></p></blockquote></span><div>These URLs are relative to ${S} s=
o just file://LICENSE works.=C2=A0</div><span class=3D""><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><p>SRC_URI =3D &quot;git://<a href=3D"http://github.com/libto=
m/libtomcrypt.git;branch=3Ddevelop" target=3D"_blank">github.com/libtom/lib=
to<wbr>mcrypt.git;branch=3Ddevelop</a>
      \<br>
      &quot;<br>
      <br>
      SRCREV =3D &quot;${AUTOREV}&quot;<br></p></blockquote></span><div>In =
general it&#39;s recommended to use a fixed SHA and then override SRVREV if=
 you need to for testing/CI/whatever.</div><span class=3D""><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><p>
      PV =3D &quot;${SRCPV}&quot;<br>
      PR =3D &quot;1&quot;</p></blockquote></span><div>No need for PR in ge=
neral.=C2=A0</div><span class=3D""><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p><span=
>S =3D &quot;${WORKDIR}/git&quot;<br>
      <br></span>
      inherit autotools-brokensep<br></p></blockquote></span><div>Boo.=C2=
=A0 Is upstream fixable or is it beyond help?=C2=A0</div><span class=3D""><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><p>
      SRC_URI[md5sum] =3D &quot;d2f152e4dc83ee4cdb1b4f1a4866f<wbr>e7f&quot;=
<br>
      SRC_URI[sha256sum] =3D
      &quot;d0ff89397f9a5fd1d13b1cbc419d5<wbr>d426e14473135515d72bfcb58e5ba=
b<wbr>f5032&quot;</p>
    <p></p></blockquote></span></div>No need for SRC_URI if you&#39;re usin=
g git fetcher.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></=
span></div>
</blockquote></div><br></div>

--001a114393548df381053f4a656b--
