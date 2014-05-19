Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80B27E00BEF; Mon, 19 May 2014 03:43:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f180.google.com (unknown [209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AFDAE00BE6
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 03:43:10 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id tp5so2230670ieb.39
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 03:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=JvUWsjbr2haBCjlUUlSdpvLYAXK8b8Pk/DaWFoxYJq4=;
	b=ZH0miWn2AO4gPgZWgQ6XtBRhUk6UG538Rqn3KLtDsxhaWJD5M5Jd++5qjfYKPY9di1
	kgs5OghWgwvYvdR9wUid/wG1XAikLmdApgtrrrcxNQj+OSKb/wD8m10ycOGd1xC4ZXvn
	EHpu9uRlPN/wgKlD4dYXBJIDnwmfHbY36DhwLPJ+n+F450MYk3HTwMSAsKpucN6JPUuR
	EpSUfIuhHMgSzI71PBoO7KLPIf1wHHAp9VoP5tAhUNEel1atV4uyV4QX+Bw9echJlSN9
	kfb+oZrnR3yNNwwhqUSVHIJ5BQdUi022phrNB1OzBbjvdwxMjQMHXO5r81FoWvSaiIdM
	4L9w==
X-Received: by 10.43.137.5 with SMTP id im5mr1700473icc.69.1400496189773; Mon,
	19 May 2014 03:43:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Mon, 19 May 2014 03:42:49 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
References: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Mon, 19 May 2014 06:42:49 -0400
Message-ID: <CAAPegz0j21Jc19ze3BDcDcNt0iE3hQEGF0Y1eJdv8epZqR3SzA@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Documentation improvements for gitsm:// fetcher
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
X-List-Received-Date: Mon, 19 May 2014 10:43:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 19, 2014 at 1:34 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> Hi,
>
> This patch is not coming across to me intact.  The process I use for patc=
hes is to take the attachment from my Thunderbird account and save it as an=
 .EML file.  Then, I mail that .EML file to my Linux box gmail account.  Fr=
om there I process the patch using the 'patch' command as normal.  For some=
 reason, the .EML file when it arrives to my gmail account has long lines o=
f random characters (gibberish) that the patch program is unable to deal wi=
th.  I am unsure if it is a problem on my end with my process or with the p=
atch generation.
>
> Scott
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Chris Morgan
>>Sent: Sunday, May 18, 2014 11:29 AM
>>To: yocto@yoctoproject.org
>>Subject: [yocto] [PATCH] Documentation improvements for gitsm:// fetcher
>>
>>Rough patch for documentation improvements now that I know how gitsm
>>should work and to help others that might be caught by switching from git=
://
>>to gitsm:// URIs.
>>
>>Chris


I'm not sure what might be doing on. I'm adding it to the email
directly from the gmail web interface from the file created via 'git
format-patch -1'. I looked but don't see any email settings around
mime in gmail's settings. Should I not be sending via email? Am I
missing a setting?

Chris

