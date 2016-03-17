Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35DCFE00BF8; Thu, 17 Mar 2016 04:07:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0096E00BEC
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 04:07:03 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id l124so80484788wmf.1
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 04:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=AWZl5CuTGzIj2NaGUy3uOlIlxVoDvtcojg6xlXuGUAM=;
	b=ikDDnd+fdQFcJE/HxY6S1qV0qK5UE2RDgNhtuudysD0hFpkcYw/uAs6ZvpfFuqZAjG
	bRoB/McRjarAedLXTLFFzdpmtx7cBdYNKQ+MLWBbxJUyFz3SpN+etni3m6IVJMuQ571E
	MshEMRpqhPnZ5vUfBJ99gCUgWjtrQO8SfEmWXZZDdGOBdoLeZRlYdzRgkpI+I4YkOdyJ
	Tt/E5HPYWxqa4BGS2jkGNbe9LfQRUsQfx8XQKrzjQAgOHM4cXLBw1kz0dQVUP/NvHqqO
	O/SvTIJzHSZbxMANcv6EhDHNGISIcMIcWay6nzhFShbbImACPQuJLD4wdI1apS3h3U/Y
	5btg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AWZl5CuTGzIj2NaGUy3uOlIlxVoDvtcojg6xlXuGUAM=;
	b=IKMVUQGb0+WicTfRhRW06pqrkngk6hkI0O41PUYpqeN56uiRM/G6TqN/RzH7llZA+R
	3KnCxkeHMHXdB6uY9FsfHpVDIahccyVRlJrw0KHhZzge2Y3U1IJkDJfMdot70souTW1y
	R89xWNfCV0/OjaGPMy5DdcPeAlsIi6sLhPjcETSe602w0Yd0copupchfenL6mGqUI96X
	pae7JVCWp/b1LZ39l6pyPzjh0xv+ua88xV+qUeQideJr/1s+FnRdtxK+Bxcd2FkwA4RC
	P+N9v5NPTu4iLBXV3dI75uqNEc3MEjU2764Ug3tZQyFUiW2wA/zsxgXy4OkGjVLZD8XX
	Xl7Q==
X-Gm-Message-State: AD7BkJJzSaV4H2UQ8PRRrEDSjh/X3WUGz+SFzlZqenRY28DFiJpr8rZ0koV0Dgs0dBuSJsgtBJRuZyrvd/l2iA==
X-Received: by 10.194.216.99 with SMTP id op3mr9444771wjc.26.1458212822190;
	Thu, 17 Mar 2016 04:07:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Thu, 17 Mar 2016 04:06:22 -0700 (PDT)
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Thu, 17 Mar 2016 06:06:22 -0500
Message-ID: <CAJgxT39h8BPhuaEME6ueMJV8YgbtsijAEMt3h-k-qhpbNtFm+w@mail.gmail.com>
To: openembedded-devel <openembedded-devel@openembedded.org>,
	yocto@yoctoproject.org
Subject: [meta-qt5] [meta-mingw] Any success using these two layers together?
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
X-List-Received-Date: Thu, 17 Mar 2016 11:07:07 -0000
Content-Type: multipart/alternative; boundary=089e0141a19046127f052e3ca174

--089e0141a19046127f052e3ca174
Content-Type: text/plain; charset=UTF-8

Does anybody have experience using meta-qt5 and meta-ming together to
produce a usable SDK including Qt development tools for use on a Windows
host together?

The stock recipes for producing the nativesdk flavors of certain Qt
packages would seem to require some modification from vanilla meta-qt5
upstream to be able to target mingw.

Cheers,
Matt

--089e0141a19046127f052e3ca174
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anybody have experience using meta-qt5 and meta-ming =
together to produce a usable SDK including Qt development tools for use on =
a Windows host together?<div><br></div><div>The stock recipes for producing=
 the nativesdk flavors of certain Qt packages would seem to require some mo=
dification from vanilla meta-qt5 upstream to be able to target mingw.<div><=
br></div><div>Cheers,</div><div>Matt</div></div></div>

--089e0141a19046127f052e3ca174--
