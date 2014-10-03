Return-Path: <trevor.woerner@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3E65E007B9; Fri,  3 Oct 2014 08:08:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72BD8E0076C
	for <yocto@yoctoproject.org>; Fri,  3 Oct 2014 08:08:37 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id h18so2636411igc.6
	for <yocto@yoctoproject.org>; Fri, 03 Oct 2014 08:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type;
	bh=2aryM/zYF0gY5sYijQUBij4hGvzkPJYq38425Vhx/Ug=;
	b=BDY3BcWs6brnmCzwdLLtKrRSosFLsanvJ4k6wxg1UOz2iQd60MdLkpmcCfXpFwYvu0
	YPsEkLgZXGp/5DizTinT4GQQLQrmG+IzgkkgipJRRO47VAV/E3AL8Le5nSzRHMXozodZ
	f6z9dkbAYXkI1WA2o/YyWX+GFORL941I4Gk6VH6NuiwL57FGe1pxPVDxQmclAiFl5uXO
	d2t/eVkfTrxDRK1niwh/pe2FrDsgI5aK6f6qFaBRdlgd5+o3gzGuIDSoqXOF/rjc2De9
	7pXE/Qc8+Xxx1Flgy71lf/LF1fUx6972Vp4wd2VQgWT4+0dS9nTojI7CyeUQN3kVdVN2
	wYtg==
X-Gm-Message-State: ALoCoQn6w3AfK2lW7eMJMcMvSSrDaS+lztVHaGXeSl272DjVScdHbKHje/tmYlNmj6ZIdAiHMqVi
X-Received: by 10.43.138.134 with SMTP id is6mr3498862icc.96.1412348917009;
	Fri, 03 Oct 2014 08:08:37 -0700 (PDT)
Received: from [192.168.141.122] (dsl-173-248-233-100.acanac.net.
	[173.248.233.100])
	by mx.google.com with ESMTPSA id a4sm1966826igv.1.2014.10.03.08.08.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Oct 2014 08:08:36 -0700 (PDT)
Message-ID: <542EBBF2.3090607@linaro.org>
Date: Fri, 03 Oct 2014 11:08:34 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: Chris Hallinan <challinan@gmail.com>, Jeff Osier-Mixon <jefro@jefro.net>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
In-Reply-To: <CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Fri, 03 Oct 2014 15:08:48 -0000
X-Groupsio-MsgNum: 21747
Content-Type: multipart/mixed; boundary="------------060704090407080803090104"

--------------060704090407080803090104
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 09/30/14 14:22, Chris Hallinan wrote:
> My only comment: make it easier to build the latest docs from git.  I
> seem to always hit errors, and I've seen other posts about that, too.
> I just did a quick make DOC=mega-manual on Daisy, and it failed with:
> "tar: mega-manual.html: Cannot stat: No such file or directory"  
>
> make DOC=dev-manual failed due to missing dependencies, and in the 30
> seconds I spent while writing this e-mail, I couldn't figure out what
> to install on my U14.04 host to satisfy it.
>
> I don't have much use/fondness for html docs.  Give me a searchable
> PDF any day.
>

Attached is the little shell script I run right after I run my other
shell script that updates all the layer repositories I follow :-)

I only build the PDFs and I've never been successful building the mega
manual either (pdf, html, or otherwise).

Getting the docs to build on my openSUSE system was also a challenge
since there are two packages which provide "docbook2x-texi" and I need
the _other_ one :-)

--------------060704090407080803090104
Content-Type: application/x-shellscript;
 name="build_yocto_docs.sh"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="build_yocto_docs.sh"

IyEvYmluL2Jhc2gKCllPQ1RPRE9DUz0iYnNwLWd1aWRlIGRldi1tYW51YWwga2VybmVsLWRldiBw
cm9maWxlLW1hbnVhbCByZWYtbWFudWFsIgoKZWNobyAieW9jdG8gZG9jcyIKcHVzaGQgeW9jdG8t
ZG9jcy9kb2N1bWVudGF0aW9uID4gL2Rldi9udWxsIDI+JjEKaWYgWyAkPyAtbmUgMCBdOyB0aGVu
CgllY2hvICJjYW4ndCBmaW5kIHlvY3RvIGRvY3MiCmVsc2UKCWZvciBET0MgaW4gJFlPQ1RPRE9D
UzsgZG8KCQltYWtlIHBkZiBET0M9JERPQwoJZG9uZQoJcG9wZCA+IC9kZXYvbnVsbCAyPiYxCmZp
CgplY2hvICIiCmVjaG8gImJpdGJha2UgZG9jIgpwdXNoZCBiaXRiYWtlL2RvYyA+IC9kZXYvbnVs
bCAyPiYxCmlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJZWNobyAiY2FuJ3QgZmluZCBiaXRiYWtlIGRv
Y3MiCmVsc2UKCW1ha2UgcGRmIERPQz1iaXRiYWtlLXVzZXItbWFudWFsCglwb3BkID4gL2Rldi9u
dWxsIDI+JjEKZmkK

--------------060704090407080803090104--
