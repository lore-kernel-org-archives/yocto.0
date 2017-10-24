Return-Path: <bachehkaraji@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36E20E00CC1; Tue, 24 Oct 2017 04:58:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bachehkaraji[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.130.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.6.130.41 listed in dnsbl.sorbs.net]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
	(sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 165CEE00C45
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 04:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1508846300; bh=iOYn/6vV3oq4PTomw0+IotVz2M8yQm8fiY4rHfIW9x4=;
	h=Date:From:To:Subject:References:From:Subject;
	b=Vqy0jRjoPE503BVPL7WSfxiisTJvT4AMu/XzZW/RZk5RrocJfgwgaMf6jKUrwwSQXQcSYfWyiHGpSnfekvNtXAs62/zf7SviXiSdw74R0QHeMY+tAGNzhfnNqhJlg9piX6lPNha5t9ZUcm5jlUOO4ACzy0dtwKYFip24B8NVFS3KA9R0+r4ZFQDnjMK2n2D8Y+KWdN9qgi9fxgVlPy3J3g8Xgwnu921YZ5A9K+bgtTs4LafnDy2fYH1Q90LVZ4jZHmgRUuN+16xqy+6EaIAJeaBobuj74PnlkvQ6LpOUFJtfl8awGNPXIZc2RCKnVYcfZ3nu0B2tq4EGSSY8awnqtw==
X-YMail-OSG: gFEteQYVM1k9nWjvxpHXl.JXxWmLjsA4hycDJxBnVbg8s5tazsgpTuc3b24zAu9
	wSdEq1.YX.9w1nBVGxwMwkLXbii6_xfc0ph45yZhZo.ynzLVWiMnbqTFBNB5PipYpqaDZY8c7.Vl
	UbjzkN9YOS8DZmb905Hhs7JnKl0il7Icr1sJDG9fNBjrKxro8X_dRB0N.FESb44pnctbiDwcsd4N
	kOn7f3a3OdHLf1KW1_3c3MM7y4qFLZeBXiAIJ8UHtpX1dK7uzV.hbACfBAu2fy3BrtFxqnOZoLRd
	z5SWAFIkrXAnSgH71vgNoofL1.hnRjHZeOJbtGSwvweBEoimRFPjKE6WohsQvA_z6Kwi0JcaMcbB
	c9nklvCA3C8eHtHC3OHnJa299s5vWub5smz5Lch4BVZ2.eJ.tG26Drf2KFIz8KIlos8xzIPX9TSm
	uPYI4AVC9qwnYfn23kn3WhB5r.rOQFOyNYoann4FhMUM1qlhvpY4-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 24 Oct 2017 11:58:20 +0000
Date: Tue, 24 Oct 2017 11:58:19 +0000 (UTC)
From: Bacheh Karaji <bachehkaraji@yahoo.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <886279436.3600717.1508846299490@mail.yahoo.com>
MIME-Version: 1.0
References: <886279436.3600717.1508846299490.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10801 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100
	Safari/537.36
Subject: How /etc/shadow packed into my final image?
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
X-List-Received-Date: Tue, 24 Oct 2017 11:58:22 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3600716_186005458.1508846299489"

------=_Part_3600716_186005458.1508846299489
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
I wanted to modify the content of /etc/shadow,but don't know how=C2=A0/etc/=
shadow files is packed into final image.
Can anybody how it is packed and way to modify it?Thanks


------=_Part_3600716_186005458.1508846299489
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:10px;"><div><font size="3">Hi,</font></div><div><font size="3"><br></font></div><div><font size="3">I wanted to modify the content of /etc/shadow,</font></div><div><font size="3">but don't know how&nbsp;</font><span style="font-size: medium;">/etc/shadow files is packed into final image.</span></div><div><font size="3"><br></font></div><div><font size="3">Can anybody how it is packed and way to modify it?</font></div><div><font size="3">Thanks</font></div><br><br></div></body></html>

------=_Part_3600716_186005458.1508846299489--
