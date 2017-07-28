Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A738DE00D11; Fri, 28 Jul 2017 01:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEAFDE00CF9
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 01:02:44 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id v190so22926805pgv.1
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 01:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=ytteZbe8d8yHuathiWZy6OGD4wCxsd4G8Bn3lfX3hDQ=;
	b=PwTOCQXuFh14+LoXEKGnzl5ktFA8LP+rCdQQcRn6N3pmwKA56dQJNSuwafJZDD0NfY
	GW0mL371KA84Iq4FkbnRxzMvOXZYoyQ8rbtXBxvNF5sQIu+qIHNmGlENSjFbIjNU3gPV
	DcW9sDABO+wI1AAOjkKss2D0VVb3yZLhniOfCgZs4O+1gfhzfZwonQMuCFkZ4cRVEdYs
	BmTY2vLyTvHVDJKmed9WoCFwUs+sw2bipPKGZ+n8fEZJ2b0fwHD9OnYwVHmlG+GoNK8q
	tfqLSthQ4Ck/SXsPzFmSAJi8DMFWuluaEB/cp2iLc64rjEcQAUFaEYuDsxNYSXTAueCO
	uKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=ytteZbe8d8yHuathiWZy6OGD4wCxsd4G8Bn3lfX3hDQ=;
	b=MwzDfD2CTq1Fd4Ff0jJ3BYbHAu4zETy7mUBpeot3r8KvscvD0RP8afYxBmyvIwxi3Z
	Sw+EtS8wvM3uxV/rDudLGosTqixWL//+jwwr0vB+xt8x/YwDRPWelsegpnoENnkbMlpj
	3vL7W4wf6Bktk9a+dks8DKRNLLqRVyMksx+18afoJvUDy6mXQWZwofoZ75manaMvDem7
	pgRuQtIeCiGi+ZS1R3/0ETJ/H+dUNT1TuirXZGwdJ/2GFMwX9hX6Q/wnNlbJkDBavMLP
	Bxj/chRD34aFk5mFYBYbjK7FNNNJYly+/YWjN1sn+Om+OcNAnx5ooYOFnI8N9GqPCVPg
	rViQ==
X-Gm-Message-State: AIVw112S0DEcK6pCNrSgjnvve3FTlm41gIKP5GITaZlyUmi3+r8mMlrQ
	74Vz/XXg5lhTtB/l
X-Received: by 10.98.135.140 with SMTP id i134mr6628098pfe.237.1501228963621; 
	Fri, 28 Jul 2017 01:02:43 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	t14sm6197998pgr.94.2017.07.28.01.02.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Jul 2017 01:02:42 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <14a22b80-17f4-12dd-0ac3-a634d45889c1@gmail.com>
Date: Fri, 28 Jul 2017 16:02:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 08:02:45 -0000
Content-Type: multipart/alternative;
	boundary="------------2B925B8DC4223FB9AE53763E"
Content-Language: en-US

--------------2B925B8DC4223FB9AE53763E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I've followed :

https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html

and trying to do bitbake but got :

  DEBUG: automake-native: class native found in blacklist, disable icecc

any work around it ?

thanks


On 28/07/17 14:36, Josef Holzmayr wrote:
> On 28.07.2017 08:30, Riko Ho wrote:
>> but have no idea on how to use it yet ?
>
> This usually is helped by reading the manual. Or the links that I 
> already provided.
>
> As a last hint for now, let me rephrase and simplify the short 
> description from icecc itself:
>
> icecc is a daemon that can accept compile jobs over the network.
>
> That should tell you that you probably don't use it directly, right?

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------2B925B8DC4223FB9AE53763E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,<br>
    </p>
    <p>I've followed :</p>
    <p><a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html">https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html</a></p>
    <p>and trying to do bitbake but got :</p>
    <p> DEBUG: automake-native: class native found in blacklist, disable
      icecc<br>
    </p>
    <p>any work around it ?</p>
    <p>thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 28/07/17 14:36, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de">On
      28.07.2017 08:30, Riko Ho wrote:
      <br>
      <blockquote type="cite">but have no idea on how to use it yet ?
        <br>
      </blockquote>
      <br>
      This usually is helped by reading the manual. Or the links that I
      already provided.
      <br>
      <br>
      As a last hint for now, let me rephrase and simplify the short
      description from icecc itself:
      <br>
      <br>
      icecc is a daemon that can accept compile jobs over the network.
      <br>
      <br>
      That should tell you that you probably don't use it directly,
      right?
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------2B925B8DC4223FB9AE53763E--
