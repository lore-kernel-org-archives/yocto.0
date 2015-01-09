Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4581DE008CD; Fri,  9 Jan 2015 06:47:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5856E0080C
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 06:47:26 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id rp18so15258988iec.11
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 06:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=h+NYWFcUm1cVgqaoCTqZLTmoh0Dl212cKnPVAIPc3SE=;
	b=JG3Nb/Z3Cz6Rt+RFsDBCtIBnss8cu4m9kqDWSVC/DTFc1mAYwpm8STfoajeLLxJu+Z
	cg+jsCkcfgLT3yVhMbqYI5Wc90f2lBcAdv3W2gHRhPC7S0QEZtSgYvWPLj0xy3LMhcQa
	ypTxnSyUuvZ88s7R4XXzFeQZ41Pb1JmNPpAW+w1hJU5Fr7lIpvcvQNdDi2CP+NH4C0Jp
	y8ju+KaxcChzwSzk2/Q6gKNE0MdMGO4zHLO8kWRL98QggRCfYYHGsdLxqxDq+4KDC/+F
	bS2wnZFzOoTg+WTGQsHHtn2DQvgqf5siqJ078Ytj7vliazvYhQCVruBi4aoS5HQMqc90
	UaXg==
X-Received: by 10.107.9.213 with SMTP id 82mr15378268ioj.45.1420814846230;
	Fri, 09 Jan 2015 06:47:26 -0800 (PST)
Received: from [192.168.141.85] ([67.55.37.231])
	by mx.google.com with ESMTPSA id q10sm4185700iga.12.2015.01.09.06.47.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Jan 2015 06:47:25 -0800 (PST)
Message-ID: <54AFE9FA.3020103@gmail.com>
Date: Fri, 09 Jan 2015 09:47:22 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1501090835420.12531@localhost>
	<alpine.LFD.2.11.1501090841280.12821@localhost>
In-Reply-To: <alpine.LFD.2.11.1501090841280.12821@localhost>
Subject: Re: do pkg_postinst() scripts need to start with "#!/bin/sh -e"?
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
X-List-Received-Date: Fri, 09 Jan 2015 14:47:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/09/15 08:42, Robert P. J. Day wrote:
> On Fri, 9 Jan 2015, Robert P. J. Day wrote:
>
>>   more manual pedantry -- dev manual, section 5.3.16, suggests:
>>
>>  A post-installation function has the following structure:
>>
>>      pkg_postinst_PACKAGENAME() {
>>      #!/bin/sh -e
>>      # Commands to carry out
>>      }
>>
>> except that every example of a pkg_postinst() script i've ever seen
>> does not contain that initial hash-bang line, so the manual should
>> at least be reworded to be consistent with the code base.
>   i take it back, i just ran across this example in base-passwd.bb:
>
> pkg_postinst_${PN}-update () {
> #!/bin/sh
> if [ -n "$D" ]; then
>         exit 0
> fi
> ${sbindir}/update-passwd
> }
>
> which (naturally) doesn't use the "-e" option :-). anyway, what does
> one suggest for consistency across the manual and code base?

Let me be the first (of many, no doubt!) to suggest:

#!/bin/bash


*ducks* :-)

