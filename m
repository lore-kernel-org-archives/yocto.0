Return-Path: <jjosburn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E68CAE00BA2; Fri,  4 Aug 2017 08:15:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jjosburn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98571E00B67
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 08:15:31 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id g131so17452204oic.3
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 08:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Uu9xiwIwJeZV74XYtc1FNPYHj7ZWWY3aIZ0z1y9J9Mc=;
	b=U4Wg15iGsAQnYPwwYFXK3tV16mulIauGSlGiSbWCOg+o9nRTdyBMtkydl8c2EbMmwi
	zNy9A3cKt0GBmPM/66DJo8r6rU7F6Otrjm+9SvNsWCofeGE3SnH/Xgz7rCl1bcYYddq1
	wlsKuu+mGOGP4BQwllDQu6+94CNf6yHBdasS99b1CkUGYVmJbMoZlyjShVO/n8lOpdIx
	FGEb6nah8kDBLcTW2TbeypvJS7UPUQg1r/OHdipVa2zheLaXBc4OF63u/QpzhaLG/K0E
	8MDRuHK6oT5vr+T6Iemjg7Um0K5lJqtTkibP8lQ6Lk9wuPnwlE6/OfHZ500eHShinJxw
	pe9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Uu9xiwIwJeZV74XYtc1FNPYHj7ZWWY3aIZ0z1y9J9Mc=;
	b=tdjBSHk3+/37y8ddQOpmkek4BezIKlG6DGIPITiXPuNcemQwakO5CmPfoj66ZlG4pN
	rlJrgPNpQleHjXoRnIO78GYbJ9//XgL1BVoxlmDLOslfvlFWQHaU9DJeTKE2esFyKbSn
	TttwiP5Gcc48Wq8yzZPILmgqc8lA1o9GyHywIB34Xjl6lCcx1nklAZRdUQsBPjuKdHgi
	ANlnh52UNwMN1ez3gB5gD+H3oM2d/taaCYOGangZ4lODNJTl0gqOm8UGITGz0hXlVYX7
	j4iLNKiZrsMVBvp+05lWN7aQgX7hIvIMa1J3AoL8Il5hiwOUkqu9v/BUNh7dHTf7SNKi
	JzEg==
X-Gm-Message-State: AHYfb5hLplXGjbNKNpoEvBDh8sseemX+IFn9A8Pb5i9Ja+X3nzSEy7Mi
	cPzPrP/mLNZPqMRSHZ853qOD+q7+Og==
X-Received: by 10.202.208.206 with SMTP id j75mr1901287oiy.61.1501859728988;
	Fri, 04 Aug 2017 08:15:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.97.7 with HTTP; Fri, 4 Aug 2017 08:15:28 -0700 (PDT)
From: "blackthirt33n ." <jjosburn@gmail.com>
Date: Fri, 4 Aug 2017 10:15:28 -0500
Message-ID: <CA+z1-f8LuOpH246T66qaufdgEbs=86aRZ-OhXO7HhZb1_dgPtg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is there a way to do a bitbake dry run.
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
X-List-Received-Date: Fri, 04 Aug 2017 15:15:32 -0000
Content-Type: multipart/alternative; boundary="001a113c31cca61f510555eef721"

--001a113c31cca61f510555eef721
Content-Type: text/plain; charset="UTF-8"

Is there a way to do bitbake dry run.
James

--001a113c31cca61f510555eef721
Content-Type: text/html; charset="UTF-8"

Is there a way to do bitbake dry run.<div>James</div>

--001a113c31cca61f510555eef721--
