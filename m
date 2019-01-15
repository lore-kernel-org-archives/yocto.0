Return-Path: <dominik.schnitzer@daqri.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DFBBE00BFB; Tue, 15 Jan 2019 12:08:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFFC8E00BE8
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:08:35 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id f23so3621359edb.3
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daqri.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=HrkL/xbxO1TDktZYAv8TnkRAJ6QKFmTQ0aNtDWq1Bgo=;
	b=Gi8SYz3Zz/jwevsk7mHMrWif2tgRfQUCJWNqFX7JNhrT6p0f/HIeBwktcLR0tx/Eta
	KgUI25Z33K2MrkEhJLzFJATzR5RTKsA9hsz7eQTzepEOUkplKPK8OD7muoto6L32J6Fe
	c7iVmlYm65WjcGkEpAI8o1TwfpcmgNjx7R2ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HrkL/xbxO1TDktZYAv8TnkRAJ6QKFmTQ0aNtDWq1Bgo=;
	b=uZKXpUlUM8ck78pK0o5ZbfUQLDilpbhhVOVxOF4Xiui5FrvcQsDc+LYUdaHx0raLMp
	GIhZ82qDf0cUcCRh44ldXrBCE5Apb5BAW8RXLdI+vELJCVkrujplU7cPql4aZZrasGjl
	xeCSlH09WBVyPlsAkrJIt/os/rSxFOPgm45I0Dwl+KStm8h+AnaZp+K60AnpytnJY63L
	AIZScjmjc7KYxIeS5w6d4v2Avd2Uhs0J2FNl4JykAWkbifsbrTOXBtCc9PdCIb10RhYu
	U18GfKBGZYx0Nt0q7iM3XfeQQ1rWNvXunt9YPY8DqvNOpLMkh781LG1m80D1wgvJiTgy
	n5Cw==
X-Gm-Message-State: AJcUukdyRAN5TrosIqgyrLXH/oQcIBRPZSB15d7jvOFNh4iZUUTMdzDZ
	NDIYSD5adU/2Lv+HDDmFdb02glnaK66lbVtZkulpBgngj/o=
X-Google-Smtp-Source: ALg8bN5gDBvcelpBFGxBoUgjZqjAZ9fiADL4FcnCiDI5EhaAu3D3gEp9HuDhxJAeqcr9z1wHLmr46XuFaZyrgOa4Gq8=
X-Received: by 2002:a17:906:f14e:: with SMTP id
	gw14-v6mr4197848ejb.231.1547582914475; 
	Tue, 15 Jan 2019 12:08:34 -0800 (PST)
MIME-Version: 1.0
From: Dominik Schnitzer <dominik.schnitzer@daqri.com>
Date: Tue, 15 Jan 2019 21:08:23 +0100
Message-ID: <CAEu+n+LWYU37CyrBFJyHPZotfJWJA6dPGa26u2MoCdxQEHFWFQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Updated meta-darwin, OSX Toolchain
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
X-List-Received-Date: Tue, 15 Jan 2019 20:08:36 -0000
Content-Type: multipart/alternative; boundary="000000000000e0da72057f84b97a"

--000000000000e0da72057f84b97a
Content-Type: text/plain; charset="UTF-8"

Hi All,

The current meta-darwin layer is outdated and cannot be used with the
current Yocto releases.
http://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin/log/

I have created a working layer for OSX toolchain support in the repository
liked below. It is based upon the original layer, but most recipes needed
to be adjusted. We are using it with the latest Sumo release. I have not
tested it with Thud yet.

https://bitbucket.org/dominikschnitzer/meta-darwin/

If there is interest in upsteaming these changes, I am happy to either
provide patches/work on the meta-darwin repo itself or just continue
working on the bitbucket git repo.

BR,
Dominik

--000000000000e0da72057f84b97a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
 All,</div><div><br></div><div>The current meta-darwin layer is outdated an=
d cannot be used with the current Yocto releases.<br></div><div><a href=3D"=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin/log/">http://git.yoct=
oproject.org/cgit/cgit.cgi/meta-darwin/log/</a></div><div><br></div><div>I =
have created a working layer for OSX toolchain support in the repository li=
ked below. It is based upon the original layer, but most recipes needed to =
be adjusted. We are using it with the latest Sumo release. I have not teste=
d it with Thud yet.</div><div><br></div><div><a href=3D"https://bitbucket.o=
rg/dominikschnitzer/meta-darwin/">https://bitbucket.org/dominikschnitzer/me=
ta-darwin/</a></div><div><br></div><div>If there is interest in upsteaming =
these changes, I am happy to either provide patches/work on the meta-darwin=
 repo itself or just continue working on the bitbucket git repo.</div><div>=
<br></div><div>BR,</div><div>Dominik<br></div></div></div></div></div>

--000000000000e0da72057f84b97a--
