Return-Path: <martin.donnelly@ge.com>
Received: from exprod5og109.obsmtp.com (exprod5og109.obsmtp.com [64.18.0.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D29FE00955
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 01:49:00 -0700 (PDT)
Received: from alpmlip13.e2k.ad.ge.com ([12.43.191.1]) (using TLSv1) by
	exprod5ob109.postini.com ([64.18.4.12]) with SMTP
	ID DSNKU0+Ve51OI+40546MIC08BPsD1QCQDvQV@postini.com;
	Thu, 17 Apr 2014 01:49:01 PDT
Received: from unknown (HELO CINMLIP01.e2k.ad.ge.com) ([3.159.213.48])
	by alpmlip13.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	17 Apr 2014 04:46:16 -0400
Received: from selma.edi.geip.ge.com ([3.26.68.70])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 17 Apr 2014 04:48:57 -0400
Received: from [3.26.68.143] (unknown [3.26.68.143])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by selma.edi.geip.ge.com (Postfix) with ESMTPS id 68D84E0483;
	Thu, 17 Apr 2014 09:48:56 +0100 (BST)
Message-ID: <534F9598.5050003@ge.com>
Date: Thu, 17 Apr 2014 09:49:28 +0100
From: Martin Donnelly <martin.donnelly@ge.com>
Organization: GE Intelligent Platforms
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Leo Schwab <lschwab@sensity.com>, yocto <yocto@yoctoproject.org>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
In-Reply-To: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Thu, 17 Apr 2014 08:49:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/03/2014 21:55, Leo Schwab wrote:
> Has anyone else done any work here?  Is there anything that I can 
> steal^H^H^H^H^Htake inspiration from?  Or am I in completely 
> unexplored territory?

I posted an RFC patch set last year but it didn't get any traction and
we subsequently ruled out use of go so I never followed up on it but it
might be a useful starting point.

http://lists.openembedded.org/pipermail/openembedded-core/2013-May/078606.html

Cheers

- Martin

