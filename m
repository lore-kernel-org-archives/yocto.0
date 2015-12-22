Return-Path: <neuberfran@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 278A1E00C7F; Tue, 22 Dec 2015 06:29:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (neuberfran[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8148BE008C8
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 06:28:59 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id j66so118519075vkg.1
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 06:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=eyjAzpTUkV2f3MiOI2t5qmFwVasW3+P4FQa7+sw24QU=;
	b=DOMDQjIy1jeGxlkIafwkFIlO7q4z/ppVzU3gmlLvZTa3ylC80sb+z9KqJ78N6m7ZOg
	rRYlreZc5OYmui5EnT9rp3jk39xGl2uBq4T/9yM4/C9oHb6FjcQWjOuCnNk6Dq2xugCF
	Y/2DJYVZIX5kRVccI2bY/p3nuSJqcn9hEIOikSYgrmipqxhJPPlKnx26/y/As3O7VTLL
	yw78n0HCyiRHreOKGitKGabAPF79DeU4fupR/N8cbskrYLUzZQ7i9AO9MWGdw1dsvClH
	/clb+TCsLxiFcHmfvjjW6EXJJLAzOd1MgGnVO1wWYJG2gK547qCxxI1deKhmMPnFjTZF
	ji6g==
MIME-Version: 1.0
X-Received: by 10.31.149.75 with SMTP id x72mr15865175vkd.81.1450794539221;
	Tue, 22 Dec 2015 06:28:59 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Tue, 22 Dec 2015 06:28:59 -0800 (PST)
In-Reply-To: <CABWL1PmEgX2_xjXr5L1gWxkqrQwgtHxGU-w5G_oq8EzdLc+gog@mail.gmail.com>
References: <CABWL1PmEgX2_xjXr5L1gWxkqrQwgtHxGU-w5G_oq8EzdLc+gog@mail.gmail.com>
Date: Tue, 22 Dec 2015 11:28:59 -0300
Message-ID: <CABWL1Pnu8=BX5ZAGTXgx6hLjAiZgMYTO6wueNk1qy5fdmg4JcQ@mail.gmail.com>
From: neuber sousa <neuberfran@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: I'm trying install DDCLIENT in intel edison with yocto project
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
X-List-Received-Date: Tue, 22 Dec 2015 14:29:01 -0000
Content-Type: multipart/alternative; boundary=001a114261602709c205277d6d7c

--001a114261602709c205277d6d7c
Content-Type: text/plain; charset=UTF-8

Hi,

Anyone know the answer ?

2015-12-21 14:02 GMT-03:00 neuber sousa <neuberfran@gmail.com>:

> I have errors: root@neuberfran:~# ddclient -v
> Can't locate Sys/Hostname.pm in @INC (you may need to install the
> Sys::Hostname module) (@INC contains: /etc/perl
> /usr/lib/perl/site_perl/5.20.0/ /usr/lib/perl/site_perl/5.20.0
> /usr/lib/perl/vendor_perl/5.20.0/ /usr/lib/perl/vendor_perl/5.20.0
> /usr/lib/perl/5.20.0/ /usr/lib/perl/5.20.0 /usr/local/lib/site_perl
> /usr/lib/perl/5.20.0 .) at /usr/sbin/ddclient line 25.
> BEGIN failed--compilation aborted at /usr/sbin/ddclient line 25.
>
> I this is* because libjson-perl *package
>
> How to install* libjson-perl *package in yocto image ?
>
>

--001a114261602709c205277d6d7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Anyone know the answer ?</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-12-21 14:02=
 GMT-03:00 neuber sousa <span dir=3D"ltr">&lt;<a href=3D"mailto:neuberfran@=
gmail.com" target=3D"_blank">neuberfran@gmail.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr">I have errors: root@neuberfran:~#=
 ddclient -v<div>Can&#39;t locate Sys/Hostname.pm in @INC (you may need to =
install the Sys::Hostname module) (@INC contains: /etc/perl /usr/lib/perl/s=
ite_perl/5.20.0/ /usr/lib/perl/site_perl/5.20.0 /usr/lib/perl/vendor_perl/5=
.20.0/ /usr/lib/perl/vendor_perl/5.20.0 /usr/lib/perl/5.20.0/ /usr/lib/perl=
/5.20.0 /usr/local/lib/site_perl /usr/lib/perl/5.20.0 .) at /usr/sbin/ddcli=
ent line 25.</div><div>BEGIN failed--compilation aborted at /usr/sbin/ddcli=
ent line 25.</div><div><br></div><div>I this is<b><i><u> because libjson-pe=
rl </u></i></b>package</div><div><br></div><div>How to install<b><i> libjso=
n-perl </i></b>package in yocto image ?</div><div><br></div></div>
</blockquote></div><br></div>

--001a114261602709c205277d6d7c--
