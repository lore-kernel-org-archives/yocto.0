Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 824A4E00C7E; Fri, 30 Nov 2018 09:31:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.219.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5181DE00C71
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 09:31:00 -0800 (PST)
Received: by mail-yb1-f172.google.com with SMTP id g192-v6so2521404ybf.3
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 09:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xWqn8cG1+sdpP0aI+wDO1yxjaXrxaLloE750Sxw2SxA=;
	b=pxmxJUkI2BBGQ0pIKYs1O+N3XXG4AGDX8ykc9wQCWQNv8yHL0ZHRgQ9dEcag9WiYkT
	SoX4BGYuvF9jWfxbQFNzMEj3kmkqGdIsvpiu8CGB7udKy3XD9o/uH5KpPmNnZllZfM9u
	Q99CjNWnjxEBOG5okThKO+N4IA+aiT71kGRAoFF3aeSHnpW04bVWc1ZuOKc8sDPJ+G9S
	CAwBH7r3NPFkuDECS+yNnPRPYYNNsPM4WtCNiwokHlNispkWaDCWwcerK/g1T1XsYRug
	xg34I5HCghXS8g091gSzhvwq4JM1QOS/hGrMieD4ZYy4Q2XEZivZAFUiSzo+0+vIf8UO
	sCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xWqn8cG1+sdpP0aI+wDO1yxjaXrxaLloE750Sxw2SxA=;
	b=hRPWv029UGQ8w2ON4Dz8Qqv688sHB8Y9/lLJoNeHEFMaG6dBqN7/SXhAw5Vcma+pZ1
	Kw4H0FMKDbGPAV5/f0qGKSKiCOAIxCgECUv8ByvtdylvVFkXusYfQn4SwFkkVUH6uOFx
	AUr+5rqL+kE4QJlZW+dvYHpwI7cwmNO69wZ1BOsl3Yq5jaE0Rt0HPB9BmnQE/dHwCmor
	+WDgCTA99SAvDQSDGia2i8XH9IRBh7+F+pApE8A5Wj25BlsdMVSuO9B39b2Z7eNK3msX
	3mJ530/hlnlQsw4XkRS5PDkr50UvSk80hj9QV9fgr22QmRLOUgzcXJjHdQlSpYtjS0tO
	2uWQ==
X-Gm-Message-State: AA+aEWZxTVc5f5fk6TTIcd5xjk8/wtbE1kXJ9uNfr+PkkBqWaUuIJcvp
	WJe8cgoaZ3v8KAnoHkPGpNGdNruTjC696bJiw8gPK0Up
X-Google-Smtp-Source: AFSGD/WxmcMU8Uv62YcwqANs5yIYHSGKmRsEpYEywVix4srZ6Vdy9Z34vHVRihL4NoyAz5Q3qDGv54tCTUykn3c61ho=
X-Received: by 2002:a25:7507:: with SMTP id q7-v6mr6675392ybc.38.1543599058992;
	Fri, 30 Nov 2018 09:30:58 -0800 (PST)
MIME-Version: 1.0
References: <20181130153459.28202-1-schnitzeltony@gmail.com>
	<57d567c0-d1c8-2321-b20c-d3ce6209f064@mvista.com>
In-Reply-To: <57d567c0-d1c8-2321-b20c-d3ce6209f064@mvista.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 30 Nov 2018 18:30:45 +0100
Message-ID: <CALbNGRTOyDkK083WM=Sdg1TRzbnuJrQgqPbsj_-J37UpsW5gAg@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][meta-qt4] sip: re-add 4.19
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
X-List-Received-Date: Fri, 30 Nov 2018 17:31:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 30, 2018 at 5:28 PM akuster <akuster@mvista.com> wrote:
>
>
>
> On 11/30/18 7:34 AM, Andreas M=C3=BCller wrote:
> > * Haven't tested this but it seems unlikely that python-pyqt builds pro=
perly
> >   with '--sip-module PyQt5.sip' in meta-oe's sip
>
> Why not fix the version in meta-oe?
>
> - armin

* This version one was considered working form meta-qt4 commit log
* As far as I can remember later version causes trouble when not
setting '--sip-module'. That would cause further efforts. I don't use
meta-qt4 / python-pyqt - just want to avoid/fix breakage and not
invest in enhancements on a orphaned layer

Andreas

