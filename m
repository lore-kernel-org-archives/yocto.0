Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE5BE00A39; Tue, 14 Aug 2018 06:47:20 -0700 (PDT)
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50EBE00A5C
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:43:21 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id l14-v6so18196650iob.7
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=b4lJDux50DWafdi0HjsKMy52lD3homUCJkntjLllKvg=;
	b=F6rvJGu+wdNsP6J85Y1S2qSrpPpzpF+H3Vy27SCb7R3gXtsy99FbNjwBY7XzybuKC4
	k54+AKIbljnIksmYyjL5Rp6XYPnF8EZ7COj87j7hleOuJKypGTGP/5+E+Z6n8USVSaTr
	cbHORxikicEfL7XwyGOMfPmOeeCi1CPgL26fxgwX0glk2bnD6MfG7syxdsXoOMOC0m6K
	n+bN9HtqlujR+7hXmPTrVyCbItilOe5mmBZUf/RuobWqbl4O1cPxNdBbR0Lkk++7ZY45
	Df03pCeED/VLNQyteEGWaxQ0hiWRwZY9/QQkCEPRAGbgJUlSUuxwqjcddbNNBrb+PWU6
	5dmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=b4lJDux50DWafdi0HjsKMy52lD3homUCJkntjLllKvg=;
	b=lUMm+9Gqre3UMkVHhmshfhIAOSlNHtN3vKVnxAi5l2D7vrQ61tkSRg0lJFtBLhW3NO
	6DC+xuyORavLXI39W8udACZkrg6rznaaGfg4S5ZRUer26mNTuX+yb557Q2qGmvLnXI/Q
	DhDLsQlpLgnmeZVOjK5dyjtMcP7BG3eNHKlyX38Rwg243a4lBp64IhLKO+0CXeux5TKS
	RYBTnf+5cFkIG14mtIw3BDeWe/gBsh+aoSu9iSXIahP1EfmFwr3PpFyJVWEVbud92OTs
	35KB3V52W/8MaTFuKk5bFl69Mp7hPEPA9w3uHKdqkbxmf1N0tWgAQwpD2sCTaUQ4LtkX
	7TVQ==
X-Gm-Message-State: AOUpUlGuLsH1lLMCWXlFaG0UulKFfOLOUjAYhVFGxyZuJ5BFtaPQ97co
	RhbwT4c848r1723rGTfdi0Wn5NrxlpC8KBrZ+bZBi0YK
X-Google-Smtp-Source: AA+uWPw0EpwvpQ+XwEI7saiXoQOepBAuQNhAtd6RSJU85hQx0EnUuT/hVmtcun29AIVOidRWFME35UyNch0EBh2jxG4=
X-Received: by 2002:a6b:6109:: with SMTP id
	v9-v6mr17296310iob.94.1534254201086; 
	Tue, 14 Aug 2018 06:43:21 -0700 (PDT)
MIME-Version: 1.0
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Tue, 14 Aug 2018 14:37:52 +0100
Message-ID: <CALf_N3ZDG46vWe1UiwwjGuv7Q7MMTpJGUUn-RSmymLAc+KbfUw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Cc: andrew.bickford@sky.com
Subject: TPM2-TSS-1.1.0.bb does not use local files when BB_NO_NETWORK = "1"
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
X-List-Received-Date: Tue, 14 Aug 2018 13:47:25 -0000
Content-Type: multipart/alternative; boundary="000000000000a6a8c90573656483"

--000000000000a6a8c90573656483
Content-Type: text/plain; charset="UTF-8"

Hi,

We have an issue doing an off-line build for TPM2-TSS-1.1.0.bb and related
packages.

Its fine when BB_NO_NETWORK is not set, build/downloads has the package
files and the .done. We then hold the .done and associated package files
locally and place them into downloads prior to building with BB_NO_NETWORK
= "1" - but the fetch fails as it will not accept the local files.

Any ideas on how to resolve this ?

We're using Morty. All other packages we use work fine with the local files.

Cheers,
Mark

--000000000000a6a8c90573656483
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>We have an issue doing a=
n off-line build for <a href=3D"http://TPM2-TSS-1.1.0.bb">TPM2-TSS-1.1.0.bb=
</a> and related packages.</div><div><br></div><div>Its fine when BB_NO_NET=
WORK is not set, build/downloads has the package files and the .done. We th=
en hold the .done and associated package files locally and place them into =
downloads prior to building with BB_NO_NETWORK =3D &quot;1&quot; - but the =
fetch fails as it will not accept the local files.</div><div><br></div><div=
>Any ideas on how to resolve this ?</div><div><br></div><div>We&#39;re usin=
g Morty. All other packages we use work fine with the local files.</div><di=
v><br></div><div>Cheers,</div><div>Mark</div><div><br></div><div><br></div>=
</div>

--000000000000a6a8c90573656483--
