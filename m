Return-Path: <maniacbug@ymail.com>
Received: from nm40-vm3.bullet.mail.ne1.yahoo.com
	(nm40-vm3.bullet.mail.ne1.yahoo.com [98.138.229.179])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3EA4FE006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 14:35:27 -0700 (PDT)
Received: from [98.138.90.55] by nm40.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Jun 2012 21:35:26 -0000
Received: from [98.138.88.232] by tm8.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Jun 2012 21:35:26 -0000
Received: from [127.0.0.1] by omp1032.mail.ne1.yahoo.com with NNFMP;
	29 Jun 2012 21:35:26 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 703436.72471.bm@omp1032.mail.ne1.yahoo.com
Received: (qmail 36156 invoked by uid 60001); 29 Jun 2012 21:35:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1341005726; bh=hvP+NrIAg7RBADPoA7KFPbJvcENvzglsLoHP2fap18g=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=3ALgvbD3Nm4Cdamn8bQ5bHHMZhrKe+Qw5dWRg9w3C+NPkj45uFoJmQKbtcR1NjN3KDBfGN27u0I2675L/8Jv1KoHUVqoirwvIY8BmGGRKjSB8PLLGC8qvZQQoZOTQjwXsbfMFYg6uVbkpQEX8+dFA5WNI88oGO0xQGh9YoglIXI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=4WOnE65a89YFfnNCJBTUYI/S+SJmIp5UKeKQPvY+FI/fLhMGnUoVh34T6TwVjcDUCOXlg8dvTERiCWHnbf9TC1UGe2IyeQfTqXo6bzR80f7EvRkLEHgQ8b7H9CcH8wzmOiEhxv7QMkjXoheppyMla2X5tAkm1GkXytbaCJMMS0w=;
X-YMail-OSG: VUvzIjUVM1n17TeVvuPQwiyDKH1cfKfj7u2FssyfCL4ZzZG
	gMtkxBxJUuC5Z.btvZnJ6_Wdo1eHANk2Flmg.Pa8u4PoqSe8466lC6.u01Vq
	wlwzjw7tu3TUzfi_SOUEiGIVBvWeZ6GBSZk7mJmB1VfT53N.JLhX3VfKoHkj
	rmtNL3Dk66iMqcQcQrGNIVn6pRytJyIEqSMBeTOi9UNZRI4quMw_fdBBTHK4
	mGFltWlb187HXdVH4KZKy0KnPclCH05Etm5qwrvhtrlfGeZ_bp4L0n6M6WhO
	4hPSn9ZjAAWA55U252CrCzwwHUTJXMCP1VS2dq8Fu5MszoCaFq_i2Udxk5a2
	7PXkHeNNl5jevNIOAbpok51jEo6U0o2RsgldMTp8lrIubRxttftHKGdFRyfq
	9Wx0iGM5TgTw1qXd2eQmLHCHffluNjf4PFhU3S2ADtDqmq858hlsK5eUVJUH
	I4sE1IkfzDxGszaZ18zV5Xk8nzKJWfiuiQ3pgEr0Z_xJLyg._q1FdOleQ_lv
	qCoft1ofWQhx3gbn0ryER0g--
Received: from [131.107.0.119] by web121601.mail.ne1.yahoo.com via HTTP;
	Fri, 29 Jun 2012 14:35:26 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
References: <mailman.4049.1340982523.2458.yocto@yoctoproject.org>
Message-ID: <1341005726.14293.YahooMailNeo@web121601.mail.ne1.yahoo.com>
Date: Fri, 29 Jun 2012 14:35:26 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <mailman.4049.1340982523.2458.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 21, Issue 118
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Jun 2012 21:35:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

>> Apologies if this is the wrong list, should it be on meta-ti?=0A>>=A0 =
=0A>> Does anyone here know if the yocto 'beagleboard' BSP works on the Bea=
gleBone board?=0A=0A> You should use the Beaglebone BSP by adding the meta-=
ti layer and =0A> following the instructions in the meta-ti readme.=0A=0ATh=
anks!=A0 Wow, that was hard to find.=A0 https://wiki.yoctoproject.org/wiki/=
File:Meta-ti.pdf needs some inbound links!

