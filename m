Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 604C5E00D8D; Wed, 21 Aug 2019 05:55:54 -0700 (PDT)
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
	*      [209.85.219.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
	[209.85.219.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2DCEE00D8A
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 05:55:53 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id m9so988518ybm.3
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 05:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DRk6mKpC6OVQcGzVLj5jsD4EoIf/VaQJS4p8xW+P7TQ=;
	b=Oh/ZWYdRiNX8QwSvgIULl1kbi9aTmYxTQWBjVoEY+LZQ/ZEDnMCN44d6BMqcHwirOT
	PWfxrqzmd74M0JYtMm+u7n88fCg6MH7Wm0bimK3Y6hvGzrFYqhEKMU86DSKQKC+fwm/Z
	LUnAfCPrmtqbG6sWQL+qCOv059l+9hY1u2PBUbziJEC1eo+1PqqUrlt+tsmqAD0JTNRf
	5gls9Z9TkWD9ExCHONppOUW2y/PWdxxjttuXwsK2s7/bCcpENNQzMb7pshlyQE4FnIef
	lvWjcUbC+xCmSaifJS0pmjGaYiYRLrV/BBLRIrdBtQEILxnGX7Pm867g3jHNhhz/JYJf
	TsQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DRk6mKpC6OVQcGzVLj5jsD4EoIf/VaQJS4p8xW+P7TQ=;
	b=EeuJOHNAHNtgFuqNH3ixUsPHtg9qFGVy1mviAOEhR6KSpLzmYCqRrXTS+MZTG/laag
	PZM1lYmAR/kb/lxqv5NXJBiSLNBwnIYlgwlPhURx1EmquGLHMKvG/cYg72X4nItlJ9WP
	uF0cvE+JMjdM+Xb82qwweGh6HAXlkI0aflppgLNqIthOC2qzeUfV20ItqOVniNGFq6FM
	978X0z2RJQJAjNKwi05Vwlt1hZ4Qc/aWQdMHFbVhuDTHLNo5Iv2Ejnk07/eSpSK3+Cjv
	sWOJedAfiTR3Z5Qj5K4z03f77ezO6f/5LFovcDSK5Y/zMIZ3tLicJ+VnHixJW4oDmqp2
	8LKA==
X-Gm-Message-State: APjAAAUA9O97IJh2hmpnsvdOdjEcZHWc9xMXOWb7ks5qRjb2zaPZ46Vi
	nzX4ocIJG/nQz5yd8tA1HvoHE6wasZzKT/tXvoZ6R0Zc
X-Google-Smtp-Source: APXvYqy6qwVkvcpVSemDw4W/86Ovf2sdkp8KJm7OONY53MlYzufLjOTAuxxTKfbnfgQTYM1eVwHa4RseFxu/VhqF2WM=
X-Received: by 2002:a25:d751:: with SMTP id o78mr25344329ybg.101.1566392152573;
	Wed, 21 Aug 2019 05:55:52 -0700 (PDT)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Wed, 21 Aug 2019 14:55:41 +0200
Message-ID: <CAKpuFdcoJr0c5fjCweYmkHxp1ap4Y7OpRvop4QF-6LORb3=_UA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: npm nodejs
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
X-List-Received-Date: Wed, 21 Aug 2019 12:55:54 -0000
Content-Type: multipart/alternative; boundary="000000000000d54c710590a017a5"

--000000000000d54c710590a017a5
Content-Type: text/plain; charset="UTF-8"

Hi

I have used Yocto and npm/nodejs now for about 1 year and think it works
but I not without some extra work. Are there any group working on
npm/nodejs? As I use it quite frequent and puts some extra work every time
i create an recipe I have some interest in supporting the work on
npm/nodejs to make it an better experience.

I thinks It quite hard to follow all the npm/nodejs parts of Yocto(devtool,
fetcher and meta-oe/../nodejs), I get the feeling that all parts not are in
sync.

I am no python developer but I would be happy to support and discuss
solutions and questions regarding Yocto and npm/nodejs.

Regards
Jonas

--000000000000d54c710590a017a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br class=3D"gmail-Apple-interchange-newline">I hav=
e used Yocto and npm/nodejs now for about 1 year and think it works but I n=
ot without some extra work. Are there any group working on npm/nodejs? As I=
 use it quite frequent and puts some extra work every time i create an reci=
pe I=C2=A0have some interest in supporting the work on npm/nodejs to make i=
t an better experience.</div><div><br></div><div>I thinks It quite hard to =
follow all the npm/nodejs parts of Yocto(devtool, fetcher and meta-oe/../no=
dejs), I get the feeling that all parts not are in sync.</div><div><br></di=
v><div>I am no python developer but I would be happy to support and=C2=A0di=
scuss solutions and questions regarding Yocto and npm/nodejs.</div><div><br=
></div><div>Regards</div><div>Jonas=C2=A0</div></div>

--000000000000d54c710590a017a5--
