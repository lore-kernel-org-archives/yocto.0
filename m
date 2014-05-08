Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F0CE00B3F; Thu,  8 May 2014 11:05:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1430 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 11:05:31 PDT
Received: from mail-we0-f177.google.com (unknown [74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26415E00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 11:05:31 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id x48so2836048wes.22
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 11:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=H8yoAwLJhp0k2ov6qra/MUgo5Pp+a1l4AXnrIf40Cgo=;
	b=mm9Kk5jYCvEJcEYwhx6/hR7Kv369vtsfxwlEZNW8e0dujnFQF3v0J/gY0iBSrVnxAw
	qc4vgzYg0bJukMRnbFMqL9iHihk0DdpQ4MUuQxIkX+NkwPc3APOq6EggF1L4uqL2Oowr
	KluP1mQhUdCjukAQQElcZNCjqVHI/WC7szYU5zJXn2D5fHOt/uYjM2M8X/eJFCgGIbuI
	O5St4ZypTni4lYRJX7oh4x9gUf7UgYT5yKkkalK2tGPOhJpuXdK4BttptPB6wyBlNhAs
	5Pmi3KsDEpQMouKQ7urPqCWLaQMCukGXC2zMD3dLA3u/Q3n7C9bN9r4DbwB97nj0nxIm
	Oesg==
X-Gm-Message-State: ALoCoQlGFRNJ23OV8mRf320/q1uLB9+jS+xGa7irgHYM/BGH8h17339Edt1fbqzBaD6lbHuGujiY
X-Received: by 10.180.78.225 with SMTP id e1mr14003168wix.17.1399570496659;
	Thu, 08 May 2014 10:34:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Thu, 8 May 2014 10:34:36 -0700 (PDT)
X-Originating-IP: [5.13.208.17]
In-Reply-To: <CANyK_8c6oFsJC60RcKPFQV9Q4tMERYoxz5t5AmZ87_b53hutwQ@mail.gmail.com>
References: <CANyK_8c6oFsJC60RcKPFQV9Q4tMERYoxz5t5AmZ87_b53hutwQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 8 May 2014 20:34:36 +0300
Message-ID: <CAK18fxEWOLY_uo1qqBbTo7KNKpBOyQhEk2Zth1uwpTDzqF2EQQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Daisy branch for meta-raspberrypi
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
X-List-Received-Date: Thu, 08 May 2014 18:05:32 -0000
Content-Type: multipart/alternative; boundary=f46d043c08644ac15404f8e6e672

--f46d043c08644ac15404f8e6e672
Content-Type: text/plain; charset=UTF-8

Daisy branch was created in all repos (yocto, github and gerrit). Thanks.


On Wed, Apr 30, 2014 at 8:14 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Hi,
>
> I'm looking to create a new Raspberry Pi image now Yocto 1.6 is out.
> oe-core has a 'daisy' branch and meta-openembedded should be following
> soon.
>
> Could we get a 'daisy' branch created in meta-raspberrypi? If there's
> anything which needs doing before that is branched let me know and
> I'll see if I have time to help out.
>
> Thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d043c08644ac15404f8e6e672
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Daisy branch was created in all repos (yocto, github and g=
errit). Thanks.</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Apr 30, 2014 at 8:14 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;m looking to create a new Raspberry Pi image now Yocto 1.6 is out.<br=
>
oe-core has a &#39;daisy&#39; branch and meta-openembedded should be follow=
ing<br>
soon.<br>
<br>
Could we get a &#39;daisy&#39; branch created in meta-raspberrypi? If there=
&#39;s<br>
anything which needs doing before that is branched let me know and<br>
I&#39;ll see if I have time to help out.<br>
<br>
Thanks,<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--f46d043c08644ac15404f8e6e672--
