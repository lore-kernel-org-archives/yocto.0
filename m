Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BDE4E00BA0; Thu, 10 Mar 2016 20:57:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E98AE00B89
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 20:56:55 -0800 (PST)
Received: by mail-vk0-f54.google.com with SMTP id c3so121754640vkb.3
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 20:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=qADMUnGjQ61+MWJ1Pe6ZmSFbEgXS/9dO/rnIMp94b1s=;
	b=bMRU7/Z4ogHCD+dDYlYWCsgrr1RxDrTthNoWCyFF92fxM214hwdayrxmvfwqeAR/yo
	zW1J7u9d3Cqla/qkPdJgB94zAeiv1s2J7TLD3IvogH6aI/sX7Nqrzd9c/kFW2ox77ZPZ
	wpjfcCB+bee2ceirb5Ueegr8zx4dSmuyzzBEOm4GWN5OvOAU8PntIidDl+BZYxMT1GwZ
	gdRsmxbnSJUzjzY8rhpuzJJSm3wHye8MkOeK6LVfDLRKM/YjlrA2N4b7fPZyweCmelN2
	J5+YWfQUr/durgPBM4cAc3DimXyV+CsaHE/NcuZwfjoQYmccqRDRgwuKFojNLNXtWfM5
	G5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=qADMUnGjQ61+MWJ1Pe6ZmSFbEgXS/9dO/rnIMp94b1s=;
	b=jsOCFtR5ZwR05ZMdlOO0/AEXQrxSWzhQaw3o7UZ5Ez0kh1yPNUmGyGqTlhhvq3ktzo
	HOkbDemDA+BJl2/CvdcCcV2Ocd2nS08/GygOyr5ArQzXL/i9sWWaoxDBYgq4sSbNA78t
	pvDALW86OdTWxMfvFGpecYQpWQya+MQ2hoPWZcxc3NelBeF4pi75LhnWghp9RSPFO5HD
	Y40xEjaJk7PLGUCZg7t3UH6dcWgdgUJpA1R5jsnSIZ/tg72VDP1lCNbHTWNmLuAi1EyH
	1BqKKiHQgmWp6m2igpD5JF9EVT3iuaL+VOB5hfml/XXgo4IxfO2frGHPuL+yOolsKsFY
	kfBw==
X-Gm-Message-State: AD7BkJJHzLuYsJ/yTo0kojlV6JMpnRjxKBwK7+zhrBoiaNwbyL1kfx+Aynz8nbblW2GqK9XXn+bzoFUEqmk3/w==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr7424458vkx.81.1457672215432;
	Thu, 10 Mar 2016 20:56:55 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Thu, 10 Mar 2016 20:56:55 -0800 (PST)
In-Reply-To: <CAJTo0LbP28EHd+Gd-Vp8PKrBoavfU-+k1BB9MmvnRV0cjcKbUg@mail.gmail.com>
References: <CALLyC8SWZ8LfnDwAWpsFxY8PZj+f6w7bySXiBmq8E7o63OVkUw@mail.gmail.com>
	<CAJTo0LbP28EHd+Gd-Vp8PKrBoavfU-+k1BB9MmvnRV0cjcKbUg@mail.gmail.com>
Date: Fri, 11 Mar 2016 10:26:55 +0530
Message-ID: <CALLyC8QZLpEtd2h7vho8mH=iFHO_4_dhVxvMi_=VuQEV08k2Gg@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: How to add some additional enviroment variables to /etc/profile file while building IMAGE
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
X-List-Received-Date: Fri, 11 Mar 2016 04:57:00 -0000
Content-Type: multipart/alternative; boundary=001a1143873e99941e052dbec234

--001a1143873e99941e052dbec234
Content-Type: text/plain; charset=UTF-8

Thank you very much!!

On Mon, Mar 7, 2016 at 3:53 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 7 March 2016 at 10:20, Vivek Per <pervivek@gmail.com> wrote:
>
>>      i want to add some additional enviroment variables in /etc/profile
>> file. How can i add these while building, so that it reflect in my target
>> image.
>>
>
> base-files is the recipe that ships /etc/profile, so you can use a
> bbappend to either replace the file entirely or _append a function to write
> your changes during the build.
>
> Ross
>

--001a1143873e99941e052dbec234
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much!!</div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Mon, Mar 7, 2016 at 3:53 PM, Burton, Ross <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blan=
k">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div=
 class=3D"gmail_quote">On 7 March 2016 at 10:20, Vivek Per <span dir=3D"ltr=
">&lt;<a href=3D"mailto:pervivek@gmail.com" target=3D"_blank">pervivek@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0 =
=C2=A0 =C2=A0i want to add some additional enviroment variables in /etc/pro=
file file. How can i add these while building, so that it reflect in my tar=
get image.</div><div></div></blockquote></div><br></span>base-files is the =
recipe that ships /etc/profile, so you can use a bbappend to either replace=
 the file entirely or _append a function to write your changes during the b=
uild.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></di=
v>
</blockquote></div><br></div>

--001a1143873e99941e052dbec234--
