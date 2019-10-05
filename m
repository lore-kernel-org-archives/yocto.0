Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F05E00B7A; Sat,  5 Oct 2019 01:19:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79804E00AE6
	for <yocto@yoctoproject.org>; Sat,  5 Oct 2019 01:18:58 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd15.ad.aruba.it with bizsmtp
	id 9kJw2100H2wfazh01kJwit; Sat, 05 Oct 2019 10:18:56 +0200
To: Yocto Project Discussion <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <f3c0b165-d488-a677-5e76-c34e3243b4a8@faresoftware.it>
Date: Sat, 5 Oct 2019 10:18:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570263536; bh=NHxv6Bw5f66qB/tc+XaHZ54l9YsPzekP4txlQNPmmno=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=eK/M7j321ndTFCbcE7uIX6zr3Si4vzkge0JHlBUTZaDN5qRsscuSSQRakCI1b/rWn
	IMwJsczZF9E9RXkhMwZIszxj585eGI5N+O9q3E4LqosTZR42oAqu0lei5SEA0CLBWA
	NyAIlgxgDs2g77AAbrxP2jb6IwybmsCsTlvn/q5My61sGUknBD7jUFZRR28q9xa5Y7
	td6OMsTul5jaycgulxXr5OGYBlhuySoIdWak6Mef8xKfcRMPERHqrVhzor6R7ORBtD
	dqrenawM7vB+ybW8z+TcnFXWdUoPyERsI37xkPvcSTEG87g6Le1rycJlKpne2AlqtK
	9fkKckXn643Fw==
Subject: Freetype 2.7.1 pkgconfig
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
X-List-Received-Date: Sat, 05 Oct 2019 08:19:00 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I try to use pygame in Pyro.

But pkg-config freetype --modversion give me 19.0.13, while freetype is 
2.7.1


Which is the reason of this version number?

I know that the field Version o freetype2.pc is assigned to 19.0.13, but 
I don't understand while the package as 2.7.1 version, tje freetype2.pc 
file has the 19.0.13 value


MZ


