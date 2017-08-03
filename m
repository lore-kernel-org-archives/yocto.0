Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E0C2E00BAD; Thu,  3 Aug 2017 03:36:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDFB9E007E4
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 03:36:33 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id g131so8571933oic.3
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 03:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IgmaSnTLFrpnuQyIdQG98CHxhovvI7v/RsZ4ejlCZac=;
	b=q30+amKl2SZ+4pP3bVhWrh4+EjS+pizEYyZm/3/cstIn8qCzJuTMgmsiXZJ6PPYUq4
	O9YEX1dpLNla0lFtFvYNV0baNa8TYlzPWnZebwtWWI7cAptvgjZSVsNrenH9YQcxhd0p
	AhK4dSPZxT0jKFpPx1ctHoW88lH6/pW8T66ofqeHJaIiUGmAPGNAse5rl3c6lveFinnH
	QUM29DAJMWKFAd7pfhEFMzzlvTP1v6CT1G7QmEZI0dsoPcSCuTKxdfDvfCuOjwY3NcmO
	s8XihfoK4SDMAwF1AIgLc8ZnPsSQnifPb2JT1trbczQ6u4qu4HknxoDlsALur6tKMBZ9
	AoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IgmaSnTLFrpnuQyIdQG98CHxhovvI7v/RsZ4ejlCZac=;
	b=Y34S740q8nAJ+ZWQ19Jp2MeKTuAy3Mv1oCQB6acpqtdg5X15QKH6QniCAEQ0hUa8Pc
	VUftSOoYSytmFtHynxNjEekHKKGFhoWNZb/uhYT+SMdwwQLVR4teCJVr3AbvF8A1MuQt
	ARFj+DIjFMdW5LRlWM4V/y4/cSdspo/1f56PCr+VTbeqzgpu4DuxdrEF9z+4aagA4f/i
	ypuJuxlyirWFZjlsKqTOde4MXvnwxnm/gbk7IboIL33VxqrdzYkdKddKj4fiJaRlIcgo
	DON2eOwu+9n4Mvb22IqLUrjtdiGMIgWnCk6oa/KLbJUNX8Ds1wL2HRSxmmhqAMb0XjSI
	56cA==
X-Gm-Message-State: AIVw1100qj8FJHSXwGs6DYOM6zoOhwmoFrrp/aacm6Q3En9heMiBznUO
	gwpXmCjIuQKzhA0dtFbUqrlYz99q0w==
X-Received: by 10.202.198.199 with SMTP id w190mr1017595oif.93.1501756592597; 
	Thu, 03 Aug 2017 03:36:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Thu, 3 Aug 2017 03:36:32 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Thu, 3 Aug 2017 03:36:32 -0700 (PDT)
From: Riko Ho <antonius.riko@gmail.com>
Date: Thu, 3 Aug 2017 18:36:32 +0800
Message-ID: <CAByQQ_r0fkf1C0qT4gqC0Q3jdORSR_+vY=WEb5aziPZs3S4TAg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Mplayer how to?
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
X-List-Received-Date: Thu, 03 Aug 2017 10:36:34 -0000
Content-Type: multipart/alternative; boundary="001a1134fb243db2c40555d6f4ef"

--001a1134fb243db2c40555d6f4ef
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Team Member,

How can I add mplayer to my image?

Regards,
Riko Ho

--001a1134fb243db2c40555d6f4ef
Content-Type: text/html; charset="UTF-8"

<p dir="ltr">Dear Yocto Team Member,</p>
<p dir="ltr">How can I add mplayer to my image?</p>
<p dir="ltr">Regards,<br>
Riko Ho</p>

--001a1134fb243db2c40555d6f4ef--
