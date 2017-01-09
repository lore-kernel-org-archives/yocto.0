Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3695AE00782; Mon,  9 Jan 2017 01:20:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.42 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42800E0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 01:20:40 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id m78so69248419lfg.2
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 01:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=0c9JTNMOppddaOZ4dWzUd9KskH7ug6H+s+ZV5+8Y31U=;
	b=eW1+eLDNo0SrR1zRzHmixKotNAMUnYIMHKM7AhAiAxFK35sIGGxC58+prQfowTw64y
	fJdMlacfPcpIxOh/E1wmBcue14QYWvvggYCIg+yJlaoqPO3RsA422Wt7TQMIYD7n/pe2
	xmU0bjZlC6IMueUUgwtZSPwibAJIJTC+YyxsSG67gnt5N6RmYtx4hVH4Dk1KWBXkZ1CQ
	o3sjdnL4PRtx8mHWn5I3/Y5ELmvTJMkEpcHj6sot1b9sX0MwJq6Vct46lnJ0w7QatTqK
	pe/BlL3J2yNmSJlY06cu1giVa4IZ+UCHYpZdQ9Gq7aTfakH7ZAuXXEKNO/UijeXolRDs
	mYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=0c9JTNMOppddaOZ4dWzUd9KskH7ug6H+s+ZV5+8Y31U=;
	b=eK2CrKFewbMKPOZT32rI7B7EmIhVaT4rURiJtlLSRmdWA8Li6UIT7GMvz/6oFtcJ0q
	Vn8pAn7gecS08XoTGzGziZLd/JEhcpx5HdOP8COiI9JPSF932wJ171AXxPSxK1C5eP0t
	ffWcqTGqgQHudlEZozG/iXprEpg03ZyUIriuW9ReHQiqFxAArJJk3FXtqLpXz7TkxeHV
	TsXfUlSsusTfPQjJU2sMLOVG6wwk+lChYHieY3WAyXk+aiukT3SzMX5VH4CIuHXua4Sj
	lNNmZoloXZeEECPlQZhNmb72AqJqqm5zU1QQR5SsMZoGgs404+8qTFekCPWKvht0gI3F
	lMYw==
X-Gm-Message-State: AIkVDXItyrsMsKqmZdFDfgFA3E3MoLatLMXKumEiu3WlKbh//JbKAvbH9QRqVJrMnfgQ02Zbl3IVSd+bCOk3ow==
X-Received: by 10.25.1.130 with SMTP id 124mr6580129lfb.60.1483953639255; Mon,
	09 Jan 2017 01:20:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.187.47 with HTTP; Mon, 9 Jan 2017 01:20:38 -0800 (PST)
In-Reply-To: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
References: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
From: Rohit Jindal <rohitj.chd@gmail.com>
Date: Mon, 9 Jan 2017 14:50:38 +0530
Message-ID: <CAHX_jjt0u0T0kv_1JJ5V=Wq8_Je6kp1uXzPeBNXixVtO7UazfA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk 8 support compile for arm with jit support
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
X-List-Received-Date: Mon, 09 Jan 2017 09:20:46 -0000
Content-Type: multipart/alternative; boundary=001a113c9e9a87f54d0545a5e1d7

--001a113c9e9a87f54d0545a5e1d7
Content-Type: text/plain; charset=UTF-8

On Saturday, January 7, 2017, Rohit Jindal <rohitj.chd@gmail.com> wrote:
> Please suggest me the solution for compiling
> Openjdk 8 for arm adding support for any jit compiler like shark or jamvm
>

--001a113c9e9a87f54d0545a5e1d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, January 7, 2017, Rohit Jindal &lt;<a href=3D"mailto:ro=
hitj.chd@gmail.com">rohitj.chd@gmail.com</a>&gt; wrote:<br>&gt; Please sugg=
est me the solution for compiling<br>&gt; Openjdk 8 for arm adding support =
for any jit compiler like shark or jamvm<br>&gt;

--001a113c9e9a87f54d0545a5e1d7--
