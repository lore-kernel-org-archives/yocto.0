Return-Path: <scancool@yahoo.com>
Received: from nm5.bullet.mail.bf1.yahoo.com (nm5.bullet.mail.bf1.yahoo.com
	[98.139.212.164])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 56EF1E00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:44:56 -0800 (PST)
Received: from [98.139.215.143] by nm5.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:44:55 -0000
Received: from [98.139.212.221] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:44:55 -0000
Received: from [127.0.0.1] by omp1030.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:44:55 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 712918.55129.bm@omp1030.mail.bf1.yahoo.com
Received: (qmail 85352 invoked by uid 60001); 14 Feb 2013 17:44:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360863895; bh=o3YIwU3i2oDgVSiTknpmigkq6oQdJC/IKAa+TSViUHI=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=HQIURcb4l3+Kgr2CnaY/AG2h8jLNwhu/6Oa0g0boTbHlfwUboSeLvrfAiBpiALyGbx46xo3jRVwVdETApAioH/rBQjoxLAfda/lDg0TqUakOqBhkh16kbtIrPgjQFDtXI9jINDzao1iIJnor8agW27uw4Sw8wh1v1qrlNiRPQKI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=u0XF1XjNpelZ6hLiC3INSoaU2N7af3idnV+NnmBfQ4dYasyEjvtTVvLT9P2BbViPsr1XC+q7hfrOm9yhE38K9jXPXtRrGxOhqAk5NvPTdZgbtp2F9gb4yLMRFFwK6KWDj13jlNHEvDhoboj1JNoZyDcWCofEazoA0fTMJKC5uuo=;
X-YMail-OSG: fSoLs4EVM1lbbp8Q7RyP4LZ5dx3VGYGYRn9pjmGOxejYoD7
	BrqGKxiurrt7pXNmi6KwtM2dxCD5vLsJAhejTtvgL26hFnzOXCF_8RhZhE41
	gAjecacBITdask9j0crvrDiyRTVOQZwNEuEveFUw885Bb9Sy7VZV9RvGEZ6X
	EqxDPfxYlZjiUQBQx1LbqIVcnf_rs4kmdLjZEpSh3sgZNADMdor.gsiniwof
	kr0ynxW__Y2sZQCidgGyAnnoJnT11oCPvuvmAk6JGI2B66mCU3I7jgrIqF80
	guHFjxnrPogRO__K3zUDWKVfH5X8U5gQGeAe7s9oWhubgJpkbKA1oQiqbB3L
	T3WrJUQZ1.yqBJ5_x8rkFT5nmiZW51ynETmF9kB5vnh3SJj3Rx9QBjg3qM0a
	bRUJCGzmAYq.3L3FC4RH.yNG9D2lcJmQS07NPh6cB72SQItQTLOM1vZoCKRP
	Ei9sBZypa9RKBLWBkPUF0ZFVJvgS9uKilUaQOynJWBgK13QJuCY7mzTC3ZMY
	YEAcnLe4tXLD3
Received: from [64.62.111.10] by web140004.mail.bf1.yahoo.com via HTTP;
	Thu, 14 Feb 2013 09:44:55 PST
X-Rocket-MIMEInfo: 001.001,
	VGhhbmtzIGJ1dCBJJ20gbm90IHN1cmUgaWYgeW91IHVuZGVyc3Rvb2QsIHdpdGggaG9iIHlvdSBjYW4gb25seSB1bmluc3RhbGwNCmFmdGVyIHRoZSBpbWFnZSBoYXMgYmVlbiBidWlsZCAsIHdlcmUgeW91IGFibGUgdG8gc2VsZWN0IHdoYXQgdG8gaW5zdGFsbCBiZWZvcmUgYnVpbGRpbmcgdGhlIGltYWdlPyBzYW1lIGFzIGJ1aWxkcm9vdD8NCg0KLS0tIE9uIFRodSwgMi8xNC8xMywgQnVydG9uLCBSb3NzIDxyb3NzLmJ1cnRvbkBpbnRlbC5jb20.IHdyb3RlOg0KDQpGcm9tOiBCdXJ0b24sIFJvc3MgPHJvc3MBMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360863895.79323.YahooMailClassic@web140004.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 09:44:55 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: RossBurton <ross.burton@intel.com>
In-Reply-To: <CAJTo0LboEa_ZWSbSqt5Bb0wtRhG-wdmGt=Tv5SEUgi=7rgCKtg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: select installation packages
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
X-List-Received-Date: Thu, 14 Feb 2013 17:44:56 -0000
Content-Type: multipart/alternative;
	boundary="-1563750066-1138006404-1360863895=:79323"

---1563750066-1138006404-1360863895=:79323
Content-Type: text/plain; charset=us-ascii

Thanks but I'm not sure if you understood, with hob you can only uninstall
after the image has been build , were you able to select what to install before building the image? same as buildroot?

--- On Thu, 2/14/13, Burton, Ross <ross.burton@intel.com> wrote:

From: Burton, Ross <ross.burton@intel.com>
Subject: Re: [yocto] select installation packages
To: "Andre Bella" <scancool@yahoo.com>
Cc: "Rudolf Streif" <rstreif@linuxfoundation.org>, yocto@yoctoproject.org
Date: Thursday, February 14, 2013, 10:39 AM

On 14 February 2013 17:31, Andre Bella <scancool@yahoo.com> wrote:


but my question is there a menuconfig to select what to build like in buildroot?

Hob has a UI, but if you're using the commandline bitbake then you'll have to edit packagegroups, images, or your local.conf manually.


Ross

---1563750066-1138006404-1360863895=:79323
Content-Type: text/html; charset=us-ascii

<table cellspacing="0" cellpadding="0" border="0" ><tr><td valign="top" style="font: inherit;">Thanks but I'm not sure if you understood, with hob you can only uninstall<br>after the image has been build , were you able to select what to install before building the image? same as buildroot?<br><br>--- On <b>Thu, 2/14/13, Burton, Ross <i>&lt;ross.burton@intel.com&gt;</i></b> wrote:<br><blockquote style="border-left: 2px solid rgb(16, 16, 255); margin-left: 5px; padding-left: 5px;"><br>From: Burton, Ross &lt;ross.burton@intel.com&gt;<br>Subject: Re: [yocto] select installation packages<br>To: "Andre Bella" &lt;scancool@yahoo.com&gt;<br>Cc: "Rudolf Streif" &lt;rstreif@linuxfoundation.org&gt;, yocto@yoctoproject.org<br>Date: Thursday, February 14, 2013, 10:39 AM<br><br><div id="yiv1546130687">On 14 February 2013 17:31, Andre Bella <span dir="ltr">&lt;<a rel="nofollow" ymailto="mailto:scancool@yahoo.com" target="_blank"
 href="/mc/compose?to=scancool@yahoo.com">scancool@yahoo.com</a>&gt;</span> wrote:<br><div class="yiv1546130687gmail_quote"><blockquote class="yiv1546130687gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

but my question is there a menuconfig to select what to build like in buildroot?<br></blockquote></div><br>Hob has a UI, but if you're using the commandline bitbake then you'll have to edit packagegroups, images, or your local.conf manually.<div>

<br></div><div>Ross</div>
</div></blockquote></td></tr></table>

---1563750066-1138006404-1360863895=:79323--
