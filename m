Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E87DE008F2; Thu,  2 Mar 2017 02:22:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
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
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B746CE00826
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 02:22:33 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id 196so1820291wmm.1
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 02:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sh6q+XeGC45fcN/arslxLSrj1gvGQgNYjK6q5u7s/uU=;
	b=mNhoNSY7PAxzwgpcJcLJgTiqS7bgrktxwM92S1ladgXgfXBQ6eU/UEm/pQwjYN3nc8
	JfLvN41hTULbiKlwxBm7XrdD2d2/SKi7KoOrIpF3s/MvvnAwJoRIUqdQez7ia7zLe3C8
	PSKP5c/WCxr8EeOLuZjZIqTLHF5OLwtSRqTPnX1B78AySUzhzFXEXpdN8cemoGBzzmSB
	7e/j+zJCjw+avb/TOSSSB8dL1O2vwVBreXQlkFodKQT47A9/MXmP7yNSMi92So8lSJIe
	Ce2zOKWxSdnimNpVS5F5+oj5ChaDAdzkZ1QMeeFNMoAiUxLzWdpLxkQ6UFCiGYhkkl6S
	dfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sh6q+XeGC45fcN/arslxLSrj1gvGQgNYjK6q5u7s/uU=;
	b=WXfSw7GrudWIKVOWsV4ZkzM3RDeGHOrpoLDBCgJwf4dxZgWPSo6VZWrmbsqjLIz4kJ
	t15ZZ/7zo1YECg8BreBznPr+poh6KnEBFte79UW2+YpGL7ljCgfy7aUtFJ5FVbKcfHFm
	hMjsmgd10u0Sk3gfTA3CEr0xYON8Oaid2dfbI3NHkRrZHZORN9IJTAwrFcUDQweFVTKD
	lINnc7xIlzbQOd570RwQp4b1ibonx0cBdYmt5DTHO9LWvHaP5oJMXWunIohmRIQX2X7c
	8jhdeedTmKdMCaPBYczLqZw/OBvMOiMGt3Lq/yIMlHMSj+l3d30VdhJVbbztDVpXx91A
	lxZQ==
X-Gm-Message-State: AMke39mtjxcVpoBuAcSN35VPb3oQPWKTl0Px8qfRflxjLTvrVLXSZUqSh1LWRiJDDV6LeWeMatyIs0Lr7IkxHg==
X-Received: by 10.28.153.196 with SMTP id b187mr7087407wme.53.1488450152007;
	Thu, 02 Mar 2017 02:22:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.88.4 with HTTP; Thu, 2 Mar 2017 02:22:31 -0800 (PST)
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 2 Mar 2017 11:22:31 +0100
Message-ID: <CAC+thW31ggogO8jNoN2p3r11pqnk-wJxDqLeVD1Pb4hWt5_cBw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Dev Day at ELC 2017
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
X-List-Received-Date: Thu, 02 Mar 2017 10:22:37 -0000
Content-Type: multipart/alternative; boundary=001a114b429e9395500549bcce1e

--001a114b429e9395500549bcce1e
Content-Type: text/plain; charset=UTF-8

Hi,

I was expecting to find some material from the Dev Day at ELC at [1] as
usual. Was it published somewhere else than the usual page?

[1] https://www.yoctoproject.org/tools-resources/presentations

--001a114b429e9395500549bcce1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I was expecting to find some materi=
al from the Dev Day at ELC at [1] as usual. Was it published somewhere else=
 than the usual page?</div><div><br></div><div>[1]=C2=A0<a href=3D"https://=
www.yoctoproject.org/tools-resources/presentations">https://www.yoctoprojec=
t.org/tools-resources/presentations</a></div></div>

--001a114b429e9395500549bcce1e--
