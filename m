Return-Path: <soniaverma9727@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EB4E01798
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 22:43:16 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id ey11so1719602wid.13
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 22:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aOjlhu94tcPqucmgcljJu8rswMmgojztS5l+9KL/cs4=;
	b=V66uhqxmcNWWqjTEknL0pmmPJ0tIHwz+O3ASF80uLOqaD/Y/fq/CTryGTmUQuvrkCz
	kWvzXeB/i4975v808gLI1HVHWCENwY8WOrdbTYzJqfM9tB/aysmbdS5bfbA1k+haPQC9
	icNxul0Lek+X76VLdlYqYrTT02Cz5//7ZSk2eRKiOp9kJIc0LrEwwNTPNMR3aYnon6HF
	lxTb7xJUPiU32oM37kUc6f7Fp7CUqaBlNCa78jYXhJy5ri/cXL6cr2sc9qJ+n6dRQAEW
	m/ZJ3SwS2yAbBFWdb2rsIr6DarM4Psnxbj7sU+etMA6/2TXARZfJ2yzC8mH0aMEH17FA
	UkNw==
MIME-Version: 1.0
X-Received: by 10.194.20.230 with SMTP id q6mr116303wje.49.1383892995433; Thu,
	07 Nov 2013 22:43:15 -0800 (PST)
Received: by 10.194.9.193 with HTTP; Thu, 7 Nov 2013 22:43:15 -0800 (PST)
In-Reply-To: <52768EEE.8080804@redhat.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAJ7VayhvsG8r0odzYiwYTXQ12J+kfewJz5K5GMs8kkM-+hvFfQ@mail.gmail.com>
	<52768EEE.8080804@redhat.com>
Date: Fri, 8 Nov 2013 12:13:15 +0530
Message-ID: <CAJ7VayhALDx9g6ZoX-ZezoVdaCz675rXGi6DTu2eijRmyxwgSA@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: Andrew Haley <aph@redhat.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	zero-dev@openjdk.java.net
Subject: Re: enable Shark support in JAVA
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
X-List-Received-Date: Fri, 08 Nov 2013 06:43:19 -0000
Content-Type: multipart/alternative; boundary=047d7b5d971b666c2a04eaa4b2f0

--047d7b5d971b666c2a04eaa4b2f0
Content-Type: text/plain; charset=ISO-8859-1

Hi Andrew


I am not able find LLVM compiler for PowerPc.Due to this I'm not able to
integrate JAVA in compiler mode on PowerPc board.
Can you suggest any alternative for that.



On Sun, Nov 3, 2013 at 11:29 PM, Andrew Haley <aph@redhat.com> wrote:

> On 10/31/2013 03:10 PM, sonia verma wrote:
> > adding zero-dev in loop.
> >
> >
> > On Thu, Oct 31, 2013 at 8:38 PM, sonia verma <soniaverma9727@gmail.com
> >wrote:
> >
> >> Hi ALL,
> >>
> >> I have integrated Java in one of the board having Powerpc architecture
> >> using meta-java. By default it cam with Zero port support which only
> works
> >> in interpreter mode.
> >>
> >> I need to enable Shark support in that. Can any one please help me with
> >> the procedure to compile JAVA with Shark support.
>
> Well, what help do you need?  You're going to have to find LLVM
> for PowerPC and start doing some integration work.
>
> Andrew.
>
>
>

--047d7b5d971b666c2a04eaa4b2f0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Andrew <br><br><br></div>I am not able find L=
LVM compiler for PowerPc.Due to this I&#39;m not able to integrate JAVA in =
compiler mode on PowerPc board.<br></div>Can you suggest any alternative fo=
r that.<br>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Nov 3, 2013 at 11:29 PM, Andrew Haley <span dir=3D"ltr">&lt=
;<a href=3D"mailto:aph@redhat.com" target=3D"_blank">aph@redhat.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
0/31/2013 03:10 PM, sonia verma wrote:<br>
&gt; adding zero-dev in loop.<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 31, 2013 at 8:38 PM, sonia verma &lt;<a href=3D"mailto:son=
iaverma9727@gmail.com">soniaverma9727@gmail.com</a>&gt;wrote:<br>
&gt;<br>
&gt;&gt; Hi ALL,<br>
&gt;&gt;<br>
&gt;&gt; I have integrated Java in one of the board having Powerpc architec=
ture<br>
&gt;&gt; using meta-java. By default it cam with Zero port support which on=
ly works<br>
&gt;&gt; in interpreter mode.<br>
&gt;&gt;<br>
&gt;&gt; I need to enable Shark support in that. Can any one please help me=
 with<br>
&gt;&gt; the procedure to compile JAVA with Shark support.<br>
<br>
</div></div>Well, what help do you need? =A0You&#39;re going to have to fin=
d LLVM<br>
for PowerPC and start doing some integration work.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Andrew.<br>
<br>
<br>
</font></span></blockquote></div><br></div>

--047d7b5d971b666c2a04eaa4b2f0--
