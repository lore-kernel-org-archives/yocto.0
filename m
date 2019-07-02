Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E854EE00D74; Tue,  2 Jul 2019 00:02:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E3BE00C09
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 00:02:34 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id n11so17362141qtl.5
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 00:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CjBzbLcL7uWx5a6cnqPvZ1o4T70prtp84fgI9cYGiZI=;
	b=LBcn+qPngDpXgo0WpkXO1fPevCx3GPXit4GytKssXJH/HTB8+d+vJeyFUyjUePTRHR
	Ue8ZlQfVaMkOIFr1oJoxQiMsqaritEn4V7j4rgsUkFD/Yhz5Bbj9f/8M/Sa2t6bL5c8F
	68ebI+jEA3A6PkBDIR5aauX4RufTjx5hA6oNZM8A45XFeJSG+JlwLXUn6m0Cfvd4Ba/c
	bTjjUdZJ1TgXC4xjvfMRfbeRdgINr5tNfg8extz3GvCdFEKdB21eTYzKw/Ajl355vIWS
	Y8ZEeGtfrujPfubQk4pk4aWuGg9w44X9vWP29CC3AdVTwG6ApcwDoIQ9AVih79CPt6ld
	TITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CjBzbLcL7uWx5a6cnqPvZ1o4T70prtp84fgI9cYGiZI=;
	b=mi7i0bJALnPr5Va21nvoqOnuPWBs3OBaRLxTHdl1Ry+uBoobKICloExtWE60ckifUX
	i5/p5em3saYFiHyp3h/DH4sCegcyLMMheCJRbWnCk8fbiDJlf/wN2AhMjunMq+3D1Nee
	i0v2KfGbpm1/Cl1f+JV54CI1BUWh3owrsIjqmZltQI/jdEEmP7GQf7d3vsp6HvfxqnH+
	OBSVTSTeDCEYcwjHuFYlYKOG6+qEBol2ct8duofRiS+jidd0jP8seCfa5J/1dAgIRZnm
	deKpIZfPJeCoDdrzaodz1ixd2kDy8D1EgA9sM3C0+7zN8KaefvQ7YK3nPHSrbDCmddtw
	nd6A==
X-Gm-Message-State: APjAAAWrEA4GH8rj8rurkAb8t5LJVMIBKb2f++H3g2p5ttUvWL9oh5Aa
	pq4aAwqPw84QjLGzs/SgSic30actU/aMFtHC3xE=
X-Google-Smtp-Source: APXvYqwkDKMQFFqbxcn7E46FMmnvSWRcdZNEt4rX/HTe07+7nUCl43CvWb1aewdMssyAhPNu8RWh2fCZimk1a2/MCKo=
X-Received: by 2002:ac8:877:: with SMTP id x52mr23798903qth.328.1562050953682; 
	Tue, 02 Jul 2019 00:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190701030845.0C5E523F54@centos7-ty-4.yocto.io>
	<fdd9755f-6468-759b-ed3b-22abc5580826@windriver.com>
	<015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com>
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 2 Jul 2019 09:02:22 +0200
Message-ID: <CAGAf8Lz0+0JRO-WdAWvyUW4wbCw8_tem1wzocGVhT3Po2w1UTQ@mail.gmail.com>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>
Cc: "pokybuild@centos7-ty-4.yocto.io" <pokybuild@centos7-ty-4.yocto.io>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.1.rc1)
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
X-List-Received-Date: Tue, 02 Jul 2019 07:02:35 -0000
Content-Type: text/plain; charset="UTF-8"

>> Runtime auto test for following platforms:
>> 1. MinnowTurbot 32-bit (Appolo Lake?)
>> 2. Coffee Lake (14nm 4th tock in the row)
>> 3. NUC 7
>> 4. NUC 6
>> 5. Edgerouter
>> 6. MPC8315e-rdb
>> 7. BeagleboneHmmmmm...

At least first four from the list are IA (INTEL Architecture)... Maybe
even fifth (Edgerouter). Nummer Sieben (number 7 - Beagle Bone) should
move at least to numero due (number 2). IMHO. ;-)

Gracie,
Zoran
_______

