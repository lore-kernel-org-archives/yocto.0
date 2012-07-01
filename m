Return-Path: <maniacbug@ymail.com>
Received: from nm9-vm3.bullet.mail.ne1.yahoo.com
	(nm9-vm3.bullet.mail.ne1.yahoo.com [98.138.91.139])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BBDA6E013D4
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2012 09:15:25 -0700 (PDT)
Received: from [98.138.90.54] by nm9.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2012 16:15:25 -0000
Received: from [98.138.89.234] by tm7.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2012 16:15:25 -0000
Received: from [127.0.0.1] by omp1049.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2012 16:15:25 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 241820.97053.bm@omp1049.mail.ne1.yahoo.com
Received: (qmail 78427 invoked by uid 60001); 1 Jul 2012 16:15:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1341159325; bh=9+4fAm3uYaiCBTIW7NIEvv2lorMFXQmqdkOK5/eUQkE=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=vwYr8inr5OR5i7LM+lbjJEgYbiwoU6kXsxrdBDkt/MsesfpngEFNUSS7lzFT9atvWXUyfOGTLryFHiiiVZdUMJDP43tMclbiX28RdNi9E3yzAIw1gbR239FQHj8TTAC1jSAXaplX1sQ52ZZds4DwwcLpdqb1XhRpYFwG5y00ItA=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=NFGNxI/E8KKZggAxvhSd2ZkRtaDi7RZ4i/oXEgsXgZA56BQZFrCqP20FwHHimL3KPrBv5EQuXc/HZ4qN4bnka1Poy4FUol1Ex35EcpAAh7YbjTGSMYpi/1rtm7zvki6cQCd/ivZthHzomCkVwytHsIdE7htR1iAxotmGSWcwMiw=;
X-YMail-OSG: vl8uKCUVM1nBNtuBHp8o3RntJbC1kYf.ONxFMS9EZeA.lSH
	p0sDuzt6ARWQLg9L5rzdHqzw0DbJXXgbbOJ75ejXUXcZ6UKWCJQQL1mVjShp
	XzQIe6_pUQyUxG3LZBj7e8F4pe6RIRImF.H34gKHrGShKRGPcnh9VuTAz.ai
	loQLWqYBu7UV93zh_jbrq8wyIbKwuMWrFj6FHzuXjVjJS5pdmdtsUsqMhqJC
	rx8NWgfAzJi.RA13EoyKrvUi4JUBQHA8hPwt4x5UQ7yS2HACse5HbhcWQOuR
	pkRn0QFyagC4V6tVhtk_gBoZBP373eHvJRe3K_pCyZhlUbbDwOCtKMqzL67s
	PsnuyhY3qQSXgc4R2PP680VA2i_KkvUrKV5e5ZT.Ide8A7VIQATssMismDgO
	O4vuU4Eqio_QdUTg56IByF9IAZxbWORqnKPIjqw--
Received: from [50.135.220.100] by web121604.mail.ne1.yahoo.com via HTTP;
	Sun, 01 Jul 2012 09:15:25 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
	<4370319.CbK9Nk4c9m@helios>
	<EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
Message-ID: <1341159325.55981.YahooMailNeo@web121604.mail.ne1.yahoo.com>
Date: Sun, 1 Jul 2012 09:15:25 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: Koen Kooi <koen@dominion.thruhere.net>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include libstdc++ in an image?
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
X-List-Received-Date: Sun, 01 Jul 2012 16:15:26 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

> But do note that if you ship libstdc++ without anything linking to it you=
 forego on the linking=0A> exception to the GPL. That is general is a Very =
Bad Thing(TM), so ship a helloword.cpp =0A> binary to keep the fsf happy. A=
s an added bonus the helloworld will drag in the lib automatically.=0A=0ATh=
anks for the advice.=A0 I had no idea.=A0 Although personally I am SO far f=
rom shipping right now :)=0AStill good to be aware of this.=0A

