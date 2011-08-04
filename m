Return-Path: <todd_cooper@yahoo.com>
Received: from nm22-vm0.bullet.mail.bf1.yahoo.com
	(nm22-vm0.bullet.mail.bf1.yahoo.com [98.139.212.126])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 54D04E011B3
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 07:42:25 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [98.139.212.152] by nm22.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 14:42:33 -0000
Received: from [98.139.212.199] by tm9.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 14:42:33 -0000
Received: from [127.0.0.1] by omp1008.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 14:42:33 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 359101.38951.bm@omp1008.mail.bf1.yahoo.com
Received: (qmail 61307 invoked by uid 60001); 4 Aug 2011 14:42:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1312468953; bh=asEkBwbjbSE/KEcWsk0F1zMpjIu1cS5lljNRUnK7YpY=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=hBfAL1QNf2tIX9TYeoQT0XqPsjUb13rbR/2Xyrqby64xgRXlglDZtakTZdFQ2cKrrQ6Eli+7F7bB3Sva9kqHSGKKN1w14cpSvPnXXChwY+4+08v8EwWbwMf0nmlrgA4GU7tML4F5AE1iYRTDV50cPSrksLmcINwtglffyh5Yieo=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=iNWepagSL26GdsJFeuAMEdNB7sT5HhFgPtpAiIj1XJy1p80KjDsQbtmP4GYnWV/VIG20hUONRUaKCkUsXbQcpBTp5Zmzdp/TwFY8WkvcGUIvRWbxv4cNZzioQ01rUyfvPoay20MgcdNb1hYc6GpaRZqps0NWn/6AxnNw3cGVeMc=;
X-YMail-OSG: XJtt60kVM1nDdiCjft4PBlKsKj0Fav2hvSRE0ZPW1LEH.gL
	5ASHeKyVhkn0YWSTuoLhONQtazfliWDzc_sk6xXMmvilc5LKElsd6xPRAcgd
	99SQdl_G2WiRVbwnvUrH_aogzLDT.JgeXQ8wba4FlO3V3WkhmSfi_B_ZBCJR
	tZAOq_Hfs2Wq8qjIU2R6q7Rh54V2Ze7A4IsJfGumZLGKKzoA6Iz9PJMPJIzQ
	fAnmeu2N.VppAd7eYv1737oPPcmjys0RQwn1mcbJ8VvRGl3L7FSiFQGEzY7L
	Tse5Lm2wo42JKf6mq9R2gcccGY5ihHqjUP.u_ZJthINkJ1aTeGB7pCoXOoWo
	xkxIHEIqzsU65GQo_JZGx52ZBzclVjBtv1RgxB_trxcyDMDqb2l5H5LVZAdQ
	7WduEWSkfYYhmTc1M1dDiazpTylBDMwzBycev4b7l.gG_nHc-
Received: from [209.104.237.170] by web161219.mail.bf1.yahoo.com via HTTP;
	Thu, 04 Aug 2011 07:42:33 PDT
X-Mailer: YahooMailWebService/0.8.113.313619
Message-ID: <1312468953.58082.YahooMailNeo@web161219.mail.bf1.yahoo.com>
Date: Thu, 4 Aug 2011 07:42:33 -0700 (PDT)
From: Todd Cooper <todd_cooper@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: prebuilt pacakages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Todd Cooper <todd_cooper@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Aug 2011 14:42:27 -0000
Content-Type: multipart/alternative; boundary="0-988574811-1312468953=:58082"

--0-988574811-1312468953=:58082
Content-Type: text/plain; charset=us-ascii

Is there any way to make Yocto try to get prebuilt packages from known repositories rather than trying to rebuild the world?

-Todd

--0-988574811-1312468953=:58082
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:times new roman, new york, times, serif;font-size:12pt"><div>Is there any way to make Yocto try to get prebuilt packages from known repositories rather than trying to rebuild the world?</div><div><br></div><div>-Todd<br></div></div></body></html>

--0-988574811-1312468953=:58082--
