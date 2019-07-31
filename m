Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5976EE00D90; Wed, 31 Jul 2019 16:04:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA483E00CDF
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 16:04:23 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id j6so20256069ioa.5
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 16:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=asUDOTFbB8DviLkw9nu/Ot1wM3+Bl7UNx9z9ckSaGck=;
	b=guKeul5L8gQJx4Ek7kIqa3TQGB4NM/CWxstpu88sMIp4mqHgRm6dbqHzw8frcBGO5w
	uLCy+OKSlcWX++3m6EMFmpZE+lBQcgsSAB8+TEs6J+uRmCOPO3rRuq3XyOT5ouvoZRY8
	bu5NaySH5MjuAvZLfCErsZgv3bbYonODxInqXvwlrLQJ13TxML49bc1ZdccnTDBJ8A0h
	zBOWTRiSTyh/WyHgeyZrUOla26NFb5ksz2FrwQL+whl8cqqPEvevEqGQQYZtVUjS5+HE
	fLWMVZIhfgiUF9o3IOoBnCq5QOmi052OcYEhXSBTJr0bYPsDJS0pWbGWZBNVgJBY0DY0
	/6Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=asUDOTFbB8DviLkw9nu/Ot1wM3+Bl7UNx9z9ckSaGck=;
	b=kzuKstcYOKfXqtxZfcjunzWGDIpJTFHJ3r3m813CJCe0wYDUg8dubi8X3nBpxt8RRh
	VTYymvmVspKMhjllyBjUaqW+XSlMJREcWmzVISs8fX5bifIwZQVo0XqhkMiATvgmu6oc
	R95FPSohcLEApUUn96Uh3/bvfd8MI4fbnUOt2dwmvfFQ+Nxs03QaPWS5K6tFW7itR4R+
	awel9fCuGT4ydTKFTPnAL+Dp7FsT/RQluUKxmr2ghQtm6k/CfdZWwVTqQFQQ3nMYCuZM
	cV3uKZqIdxFYvCyz4PzhGKPuW7hlE2N9w/BfXmBR8N3QCU3Feb0iV5v9gZjigZP8Wb6U
	FCDA==
X-Gm-Message-State: APjAAAWR0NJ1pbVfRvfzzto+xA1eATgO2poiHppZIIEaiZNC/pXMjIk4
	03FPDx0Z+bDAxPPIYqEXx43HcWmVbzKuZq7atAfxCaH6
X-Google-Smtp-Source: APXvYqyuIkiso78FY7MDf30rBprxtv67DiFYprrVraNYNXoBlr8vxUHFNONNKsmvwlucuHCAKBumzjwlvrWx5pFkuBc=
X-Received: by 2002:a05:6602:22cc:: with SMTP id
	e12mr52891630ioe.192.1564614263347; 
	Wed, 31 Jul 2019 16:04:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Wed, 31 Jul 2019 16:04:22
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 1 Aug 2019 09:04:22 +1000
Message-ID: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto build failed to include service file in /deplogy/images/image.wic.gz
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
X-List-Received-Date: Wed, 31 Jul 2019 23:04:25 -0000
Content-Type: text/plain; charset="UTF-8"

HI,

I have been struggling to find a fix for missing service file, I found
another solution posted from the Internet to use FILES_${PN} +=
"${systemd_system_unitdir}/dl-mgr.service" at the end of the bb file:

install -d ${D}${systemd_system_unitdir}
install -m 0644 ${WORKDIR}/dl-mgr.service ${D}${systemd_system_unitdir}

As well as this to the end of the .bb file

FILES_${PN} += "${libexecdir}/dl-mgr.sh"
FILES_${PN} += "${systemd_system_unitdir}/dl-mgr.service"

But I could not build it "unprased line FILES_${PN} +=
"${systemd_system_unitdir}/dl-mgr.service", could anyone help please?

Thank you.

Kind regards,

- JH

