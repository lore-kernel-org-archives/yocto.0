Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EFAFE00AE6; Sat,  5 Oct 2019 02:36:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C4CE007AE
	for <yocto@yoctoproject.org>; Sat,  5 Oct 2019 02:36:33 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd15.ad.aruba.it with bizsmtp
	id 9lcY2100B2wfazh01lcYmS; Sat, 05 Oct 2019 11:36:32 +0200
To: yocto@yoctoproject.org
References: <f3c0b165-d488-a677-5e76-c34e3243b4a8@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <1808ecea-8f15-227c-f7be-33ecace6da4b@faresoftware.it>
Date: Sat, 5 Oct 2019 11:36:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f3c0b165-d488-a677-5e76-c34e3243b4a8@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570268192; bh=J9bvTH5hsCoh5OXN0pQ5GLIoEAQ8Dn5pL9txuKDb6K4=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=hlzHUZN+l2E6GLAC2lxJ5vmq5pukbzIt8P8cS910cW2vbOvcxMgKvx0We8VKiS4Aw
	oSRwKIxccoO4p713VYDbvEAInI52RhLPjEkzR+8mUEU/VYxnXRsxPfViQ5jfR242PA
	MET/BhZY8jjfH2VYMS+LZ4sNhIIl+v0sM0J9WcpmsqBljdoHlg0rV2Uge7yoHVKPrN
	zM9EyOyG+0MWtz6kVlU3zgILrZbsR4rTkQrjo2FZ2SndTtakzqE5er6HzlcJDi45uy
	x8DMLpwlhoZY4R5ElIgrUlLHMHmiBtyphpBB9jwC5zpHSEMXQ58f3cDWXTRvUfT7h3
	4XT1QNAEA6CFw==
Subject: Re: Freetype 2.7.1 pkgconfig
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
X-List-Received-Date: Sat, 05 Oct 2019 09:36:35 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Sorry for this post.

I solved

Il 05/10/19 10:18, Mauro Ziliani ha scritto:
> Hi all.
>
> I try to use pygame in Pyro.
>
> But pkg-config freetype --modversion give me 19.0.13, while freetype 
> is 2.7.1
>
>
> Which is the reason of this version number?
>
> I know that the field Version o freetype2.pc is assigned to 19.0.13, 
> but I don't understand while the package as 2.7.1 version, tje 
> freetype2.pc file has the 19.0.13 value
>
>
> MZ
>

