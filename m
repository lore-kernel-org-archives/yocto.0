Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DA2FE0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 00:57:54 -0700 (PDT)
Received: by dadz8 with SMTP id z8so4959976dad.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 00:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Fv/CDn25i0Wx6/4kAKZ4/dj/qCLXUz1zp21zQ1opCKs=;
	b=0bmsAuhOHhMYUvJhlyPjd5LhoI0u8XqZpz9kgyJaf3EbRYAvkqWE9eZnjUjjYW9ou4
	Pq2I2ekcMt6INTd3Cf12F2BspDCHVJiM8uyMh04lDsm5xwpdTey8mI6fBKUvy2gqiDRZ
	4vOi7ERETxF5zjBuvHt4S2MYFtSqTAyCdGaOdyieS18frbTUUbzHYuH80GC9QRfLG8UI
	/I2JspQGmz91bCVjcNKqLRU5+tJnQnH3nxs7Q/jnCb5IxxDjLCEcFgFGPvW2uJf9uqJR
	nISlqHQzWN5DOtYAFdoQH+Kb4G/hKjO674MafOzaV1fqwOOt7Tj4YdFrufPLghzsnb47
	PC2w==
MIME-Version: 1.0
Received: by 10.68.227.169 with SMTP id sb9mr5359166pbc.157.1336463874165;
	Tue, 08 May 2012 00:57:54 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 00:57:54 -0700 (PDT)
Date: Tue, 8 May 2012 09:57:54 +0200
Message-ID: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Tue, 08 May 2012 07:57:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

A next question/issue wrt my denzil experiment:

I wanted to know what licenses are used in my image.
I found tmp/deploy/licenses but this is package oriented and does not
really give a quick overview.

The manual gave me this section:
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-src-distribute

I tried to inherit src_distribute and src_distribute_local, but to no avail
Running a find on the source tree did not reveal these classes:

frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
./meta/classes/pkg_distribute.bbclass
frans@frans-desktop:~/poky-denzil-7.0$

Something missing?
And what is the best way to find out what licenses are used?

Thanks, (and keep up the good work!)
Frans.

