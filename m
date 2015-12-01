Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 688BFE00A73; Tue,  1 Dec 2015 01:49:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10D0FE009F3
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 01:49:47 -0800 (PST)
Received: by wmec201 with SMTP id c201so5350826wme.1
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 01:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lKFZyo2WDdxZN4Ae520OW5OjIle8phRGyMWUOnyrna0=;
	b=nV83HfIqwb+HXvTt3wF3GDEHs3rTHm8pXZ1YtvwBiY99JmXVPLH3VXlY9UblDlq20i
	1h9aK5+e70t2jMw15HK12LgHIgf7plXqSXQC2XUga4kx5FpsF9LATZZw/9tm46KAVvAs
	EvNA/Wa8HrNiqonVqjGDli8emXt3D4a6JBoIVkxVkuZcrAd8P+EMi6WIm6dKx9vBurCl
	UvnyZNEjY9uvHW9Q0BrCy5nkOZz16lRZ0K1bJ6HVOSvrpqes6koUWtYqSEfhBedz7F6G
	6uN/BJOsMqZHWa+DMCK9a1LQXo51rshajJlLhPpM0ysGknc7yHcC0C4rDQLEiopBcmfd
	6x4A==
MIME-Version: 1.0
X-Received: by 10.28.232.136 with SMTP id f8mr36964681wmi.1.1448963386540;
	Tue, 01 Dec 2015 01:49:46 -0800 (PST)
Received: by 10.28.142.20 with HTTP; Tue, 1 Dec 2015 01:49:46 -0800 (PST)
Date: Tue, 1 Dec 2015 10:49:46 +0100
Message-ID: <CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: FEED_DEPLOYDIR_BASE_URI does not work
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
X-List-Received-Date: Tue, 01 Dec 2015 09:49:51 -0000
Content-Type: multipart/alternative; boundary=001a11478ae0f289610525d31329

--001a11478ae0f289610525d31329
Content-Type: text/plain; charset=UTF-8

Hello,

Setting FEED_DEPLOYDIR_BASE_URI
<http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-FEED_DEPLOYDIR_BASE_URI>
in local.conf as specified in the yocto manual does NOT generate any
/etc/opkg/base-feeds.conf in the root of the target filesystem!
Is ist a known bug ? I'm using jethro version with opkg as package manager.

cheers,
Ayoub zaki

--001a11478ae0f289610525d31329
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><code class=3D""><font size=3D"2">Hello,<br><br>Setting <a=
 href=3D"http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#=
var-FEED_DEPLOYDIR_BASE_URI">FEED_DEPLOYDIR_BASE_URI</a> in local.conf as s=
pecified in the yocto manual does NOT generate any /etc/opkg/base-feeds.con=
f in the root of the target filesystem!<br>Is ist a known bug ? I&#39;m usi=
ng jethro version with opkg as package manager.<br><br>cheers,<br>Ayoub zak=
i</font><br></code></div>

--001a11478ae0f289610525d31329--
