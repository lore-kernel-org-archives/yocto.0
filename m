Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03611E00307
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 06:27:50 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so3070763ywm.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 06:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=X5d17CCh+/nIrMONBy3Jl1bse7Opt6As/BpVQ34MTLQ=;
	b=OpVbv5L17i1Ve/fzmA3W/c0EhcFPJpF+kWjT3oIgXW5A01aXz63//OhGXLcx7F3Bwf
	8dTrH8bVAC87HkvTI1eWGkhXbk5xp8F6m2n3stEIFNcmA+urS1coVzRes6HsKda6HCbv
	BvQsrTVzRL6W64DWqXN1jInhT3mWJzW77enJs=
MIME-Version: 1.0
Received: by 10.101.9.3 with SMTP id m3mr1286333ani.130.1320848776595; Wed, 09
	Nov 2011 06:26:16 -0800 (PST)
Received: by 10.236.157.138 with HTTP; Wed, 9 Nov 2011 06:26:16 -0800 (PST)
Date: Wed, 9 Nov 2011 09:26:16 -0500
Message-ID: <CANFv2Enj-gEHZi25b0CgwT=hnAuNaPdBFOYz7d4Jv07kAbU+Ow@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-crownbay/README
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Nov 2011 14:27:51 -0000
Content-Type: multipart/alternative; boundary=0016e6d260d221898d04b14e1259

--0016e6d260d221898d04b14e1259
Content-Type: text/plain; charset=ISO-8859-1

A couple of items I think need changed in the subject document.

1. the command to copy the license needs recipe changed to recipe-graphics.
2. both of the cp commands need some additional directory reference since
meta-intel is not in the IEMGD_HEAD_Linux directoy anywhere.

Jim a

--0016e6d260d221898d04b14e1259
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>A couple of=A0items I think need changed in the subject document.</div=
>
<div>=A0</div>
<div>1. the command to copy the license needs recipe changed to recipe-grap=
hics.</div>
<div>2. both of the cp commands need some additional directory=A0reference =
since meta-intel is not in the IEMGD_HEAD_Linux directoy anywhere.</div>
<div>=A0</div>
<div>Jim a</div>
<div>=A0</div>

--0016e6d260d221898d04b14e1259--
