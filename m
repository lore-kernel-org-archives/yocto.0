Return-Path: <devendra.devadiga@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F053E00DD9; Tue, 19 Nov 2019 04:28:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from c57603.sgvps.net (c57603.sgvps.net [109.199.122.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D196E00D35
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 04:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZGSP4ssb4PZBThBkkhWkeVZ3o15GcWRGDC51F/HF+2M=;
	b=JXwQjUhNb5TU411v5vGgoHXIU
	jgWkcGgvbOsicE+DGnNxeQTHvZJdhLqpsywpYBz/8ThAZmF57AMhOyb9tmKv4xX7DBTdG8NiejNrg
	TEMxU72A6GaVtv9nQeEK9b9muhfxxXnXUcR2qHxtHT+EvqsMFl9I1d7zXdu8fnKcB5/B9bUngbrHf
	CSlKLuW7VxFCryHSX5/E0GClrAvcyt5V3gVjYpZASbZwQOwpjCzodJseXKHEzypykjTGgSFKk37G9
	X+5uQZekaUUdwBbFOGkQEw7yE0BeU9JREmH0G4/Wl3Ty0jJjkHQNO1nifSVTdbBFDgNYwutpkUaDl
	IjrrPuj1w==;
Received: from [127.0.0.1] (port=58434 helo=c57603.sgvps.net)
	by c57603.sgvps.net with esmtpa (Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <devendra.devadiga@iwavesystems.com>)
	id 1iX2cj-000EY3-Gj
	for yocto@yoctoproject.org; Tue, 19 Nov 2019 06:28:49 -0600
MIME-Version: 1.0
Date: Tue, 19 Nov 2019 06:28:49 -0600
From: devendra.devadiga@iwavesystems.com
To: yocto@yoctoproject.org
Message-ID: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com>
X-Sender: devendra.devadiga@iwavesystems.com
User-Agent: Roundcube Webmail/1.2.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - c57603.sgvps.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - iwavesystems.com
X-Get-Message-Sender-Via: c57603.sgvps.net: authenticated_id:
	devendra.devadiga@iwavesystems.com
X-Authenticated-Sender: c57603.sgvps.net: devendra.devadiga@iwavesystems.com
X-Mailman-Approved-At: Thu, 21 Nov 2019 01:12:37 -0800
Subject: Memory Tests in U-Boot
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
X-List-Received-Date: Tue, 19 Nov 2019 12:28:52 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

In U-Boot I found some generic memory tests commands like mtest and post 
tests. But I need complete DDR4 memory test with below algorithms:

* Checkerboard Test
* March C- Test
* Neighborhood Pattern Sensitive Fault

Can I get any reference code for these algorithms in U-Boot ?
Implementation for these algorithms available in any of U-Boot version ?

Thanks and Regards,
Devendra

