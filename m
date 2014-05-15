Return-Path: <lucas.pirolla@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74F15E00A44; Thu, 15 May 2014 11:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lucas.pirolla[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f51.google.com (unknown [209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC66E0053B
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 11:34:55 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id q107so2394198qgd.38
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 11:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NDN/offlZtLGcDsXyfwCcxoDLpPC3SRmsZtTOTojUVE=;
	b=XORYpVoZe9r9XFuRMkSykD+9HiHu2oWhP5aizctSLEUDk9BlkIepk29qK84L3T/RPH
	7Sw1sy3uO76OnuFfwqzwIJhT4q8xIepzErxCNwd5jzhcBt1oumP3ny0KPLjiwg1pY1yZ
	/PQ9wHXC4bPKidUn15+hTqPvE3q8MTqpI5Kt5bP02ZIB/7Wm2HqbFAsE/85wtLxdo0dc
	UHN8OgchUIHnJi73L7FVhYh9daY7/QeQpc9cq8cJiLiBm1MW1d1xYLsnMJMbVLc9mYj/
	cMaj5Rm5uhRoxadGvLaSPHlW3ujGRLQbiPtIqo1p2d3eXh6KZlBU2BgYGM6jw8yfksco
	baCA==
X-Received: by 10.224.166.9 with SMTP id k9mr16003872qay.25.1400178894197;
	Thu, 15 May 2014 11:34:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.142 with HTTP; Thu, 15 May 2014 11:34:34 -0700 (PDT)
In-Reply-To: <CAK4xyAkzUtVYQkipdF6W7-ASOafOFx6V4vcOK=TLW9DTUVgb0w@mail.gmail.com>
References: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
	<5373E26A.6060509@linux.intel.com>
	<CAJTo0LaEm3_JXSe=XXfsYUyZPgceSRZfP0+_5zDpvuhcZSzdJQ@mail.gmail.com>
	<CAK4xyAkzUtVYQkipdF6W7-ASOafOFx6V4vcOK=TLW9DTUVgb0w@mail.gmail.com>
From: Lucas Pirolla <lucas.pirolla@gmail.com>
Date: Thu, 15 May 2014 15:34:34 -0300
Message-ID: <CAK4xyAn-DuxjcGUuV52Rp1Vptu=XhHQJY2CGTJ_8h0LRpicJGw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-web-kiosk: bad fonts in high resolution
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
X-List-Received-Date: Thu, 15 May 2014 18:34:58 -0000
Content-Type: multipart/alternative; boundary=001a11c246dc9c6fdf04f9748dc3

--001a11c246dc9c6fdf04f9748dc3
Content-Type: text/plain; charset=ISO-8859-1

I found out what the problem was... it's congatec's LVDS->DVI converter!

Attached a screen in the HDMI output and all fonts were marvelous!

Thanks for the attention!


On Thu, May 15, 2014 at 2:33 PM, Lucas Pirolla <lucas.pirolla@gmail.com>wrote:

> Attached are the outputs for both commands in localhost:0.0
>
> in u-boot, I have:
> vid_dev0=ldb,LDB-1080P60,if=RGB24 ldb=spl0
>
>
>
> On Thu, May 15, 2014 at 6:57 AM, Burton, Ross <ross.burton@intel.com>wrote:
>
>> On 14 May 2014 22:38, Saul Wold <sgw@linux.intel.com> wrote:
>> >> I'm new to Yocto, and I made an Image meta-web-kiosk, and when I run
>> it,
>> >> the fonts in browser  are getting messed up, as you can see in these
>> >> images:
>> >>
>> >>
>> >>
>> https://drive.google.com/folderview?id=0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&usp=sharing
>> >>
>> >> This happened in FullHD output.  But when I low the resolution to VGA,
>> >> fonts are totally ok.
>>
>> It would be interesting to see the output of xdpyinfo and xrandr, to
>> check that X isn't being lied to about the screen.
>>
>> Ross
>>
>
>

--001a11c246dc9c6fdf04f9748dc3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I found out what the problem was... it&#39;s congatec&#39;=
s LVDS-&gt;DVI converter!<div><br></div><div>Attached a screen in the HDMI =
output and all fonts were marvelous!</div><div><br></div><div>Thanks for th=
e attention!</div>

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, May 1=
5, 2014 at 2:33 PM, Lucas Pirolla <span dir=3D"ltr">&lt;<a href=3D"mailto:l=
ucas.pirolla@gmail.com" target=3D"_blank">lucas.pirolla@gmail.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Attached are the outputs fo=
r both commands in localhost:0.0<div><br></div><div>in u-boot, I have:</div=
>
<div>
vid_dev0=3Dldb,LDB-1080P60,if=3DRGB24 ldb=3Dspl0<br></div><div><br></div></=
div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Thu, May 15, 2014 at 6:57 AM, Burton, Ros=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">


<div>On 14 May 2014 22:38, Saul Wold &lt;<a href=3D"mailto:sgw@linux.intel.=
com" target=3D"_blank">sgw@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt; I&#39;m new to Yocto, and I made an Image meta-web-kiosk, and when=
 I run it,<br>
&gt;&gt; the fonts in browser =A0are getting messed up, as you can see in t=
hese<br>
&gt;&gt; images:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://drive.google.com/folderview?id=3D0Bw1B-mbeX0tbR=
nc0OHZSaDVuQlE&amp;usp=3Dsharing" target=3D"_blank">https://drive.google.co=
m/folderview?id=3D0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&amp;usp=3Dsharing</a><br>
&gt;&gt;<br>
&gt;&gt; This happened in FullHD output. =A0But when I low the resolution t=
o VGA,<br>
&gt;&gt; fonts are totally ok.<br>
<br>
</div>It would be interesting to see the output of xdpyinfo and xrandr, to<=
br>
check that X isn&#39;t being lied to about the screen.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div>

--001a11c246dc9c6fdf04f9748dc3--
