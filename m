Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D45E00827; Sun, 25 Jan 2015 10:36:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008B6E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:36:49 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id z12so5641369wgg.3
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:36:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=VdtyAhJSu2ttTskB003GYdO9wWAw0cNwIsLuhUugeIU=;
	b=U5OwLGYG1ei2RJg9vHFeUhDBJTiPBCRqQ1vdhdaZ8/P6Nn8f+FjvrG0hIPnvfO5/Br
	BGv3J/qTyqmVm4rGT0Nh1pNuk9OmG/y244RQ48vCDDcQgylF9a2vB6s86rRnlLbeKqZi
	jokHCLvDDITmQGak4ZXwuAKRxGpslgfKTRe6RqLpF/Tpcc7fz+gcvlumDaxzKzeU1awp
	uYxKueOp+N/2IhXKiaRXzUdnBeQaD2FKmKSQ3ha8Bx37zotZb/tUqrCCUMbGQ4T88fQu
	sjAIZ8M4oA8thC3veZBfavsAPONibosdqP7bHqrs7aWmaDmpzaCVl6teGFiR03hmt7he
	K+1Q==
X-Gm-Message-State: ALoCoQnewRM70x2ZGifCEdpw62jfljB1wZWmDJLcv2VZOqHy8a3HIs6NvMGoUAr3VciQ8NSI3FRC
X-Received: by 10.181.13.136 with SMTP id ey8mr25107242wid.50.1422211008544;
	Sun, 25 Jan 2015 10:36:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 10:36:28 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <1422210706-8050-1-git-send-email-andrei@gherzan.ro>
References: <1422210706-8050-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 25 Jan 2015 20:36:28 +0200
Message-ID: <CAK18fxEkoP3iUigOY8qqMSmpiEoWhrQpWqb-w2Ovdxr9=c3jpw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] omxplayer: Add patch to fix lflags and cflags
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
X-List-Received-Date: Sun, 25 Jan 2015 18:36:56 -0000
Content-Type: multipart/alternative; boundary=f46d04388fcbf5d889050d7e4d8f

--f46d04388fcbf5d889050d7e4d8f
Content-Type: text/plain; charset=UTF-8

On Sun, Jan 25, 2015 at 8:31 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> This patch fixes the following package build break:
> | arm-poky-linux-gnueabi-gcc is unable to create an executable file.
> | C compiler test failed.


Both patches merged.


-- 
*Andrei Gherzan*

--f46d04388fcbf5d889050d7e4d8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Jan 25, 2015 at 8:31 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<=
a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This patch fixes the f=
ollowing package build break:<br>
| arm-poky-linux-gnueabi-gcc is unable to create an executable file.<br>
| C compiler test failed.</blockquote><div><br></div><div>Both patches merg=
ed.=C2=A0</div></div><br clear=3D"all"><div><br></div>-- <br><div class=3D"=
gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"></div><d=
iv style=3D"text-align:center"><div align=3D"left"><b style=3D"font-family:=
Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan=
</b><br></div></div></div></div>
</div></div>

--f46d04388fcbf5d889050d7e4d8f--
