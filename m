Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE379E00954; Thu,  9 Apr 2015 19:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB3AE008F6
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 19:42:30 -0700 (PDT)
Received: by igblo3 with SMTP id lo3so7579413igb.0
	for <yocto@yoctoproject.org>; Thu, 09 Apr 2015 19:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PCkUTCV5KzDbX9jbjlzbzDzO2D7uqFH+nrBquBkSO6I=;
	b=u/ROMjCayP4gEWhupksRjh/NBXKJ/HM592kT31QIbmhB7FE2dEV0Zr0FJIr09xsom7
	S1U8CC0mSQW/e99vcvwzvcnwhcc5g1FDDBhfewY6/TderpPFXy/wGPGFQJhZm4dlu6A6
	oL8lLKQn9oSXYng+cpcG9Dvr+cCN9M3c+gW7Z9iZDmhBCCt1wWk+L1QZ3zSpIg2IFTwI
	VjfJb+ZQWj+zeRKkWXlbX10NtL1j8WFwt+ZkuV5WVnwL6vVwnUrsi2YHmGpxfKMl0wPh
	D8dwuq3f43ecMK6CaGciVgptnpFq8oenQhY64UTbAogMlQBWm5qKM09pnY4VQuXYChcH
	070A==
MIME-Version: 1.0
X-Received: by 10.42.172.9 with SMTP id l9mr726515icz.6.1428633749670; Thu, 09
	Apr 2015 19:42:29 -0700 (PDT)
Received: by 10.64.77.98 with HTTP; Thu, 9 Apr 2015 19:42:29 -0700 (PDT)
Date: Fri, 10 Apr 2015 10:42:29 +0800
Message-ID: <CACjDgAP+ALDoZHk_1ZGZn=tO2n2CHEfKfrD4CQMhXxfp6-ZAXg@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Replacing/Updating Intel igb driver
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
X-List-Received-Date: Fri, 10 Apr 2015 02:42:34 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e81d229d258051355b76b

--90e6ba6e81d229d258051355b76b
Content-Type: text/plain; charset=UTF-8

Hi,

May I know how to go about using the latest Intel driver for igb 5.2.9
(replace the default kernel) in my build (yocto 1.7.1) ?   Any help would
be appreciated.  Thank you.

Regards,
Albert.

--90e6ba6e81d229d258051355b76b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>May I know how to go about using th=
e latest Intel driver for igb 5.2.9 (replace the default kernel) in my buil=
d (yocto 1.7.1) ? =C2=A0 Any help would be appreciated.=C2=A0 Thank you.</d=
iv><div><br></div><div>Regards,</div><div>Albert.</div></div>

--90e6ba6e81d229d258051355b76b--
