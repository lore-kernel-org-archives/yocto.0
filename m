Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76910E0076F; Tue,  3 Feb 2015 08:21:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06E7E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 08:21:00 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id a13so27682416igq.0
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 08:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2ac+PZQyR/5cFzGpmt7zHYurPbdyDPnXtyR+v65cU/w=;
	b=B+JvadqmCmksYMhdflepKpq7bmJSSK/mCw48ZUJqB+MfuMEj+1Pz4GvYdkZ2yXAlR7
	XJP6iREukJoSfhscZRs8ensrTqs8Iq9SXDKLcO5I94yDdJszuJHjKokaKPke/p3Xki2k
	saDgCEDGIUPzrzrAOtQYfsHkfE0C94y3YPxGd2XP1xiYQaOg/rb4+wMfRNA8wnbzStLm
	zQQXxdB9YVmKJLLMxxJAA25KbthugRqs42TANpFO5uYIJ9bgdmgCV4i5gZr/S94fFqvr
	stBnUROOTYGyUF/irRmBNArFm4AqiUQCDWiRlFLj1Gv8HoJKZBhxfYvEHvp69jAN3X1G
	zwSQ==
X-Received: by 10.50.114.33 with SMTP id jd1mr18901004igb.31.1422980459717;
	Tue, 03 Feb 2015 08:20:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.8.196 with HTTP; Tue, 3 Feb 2015 08:20:29 -0800 (PST)
In-Reply-To: <16744578.PpAB9mIkF5@peggleto-mobl5.ger.corp.intel.com>
References: <CAK8F28nZxY06hxRokjJVNOvWPLwwdgp86qu11QJa8_bOFGKw-g@mail.gmail.com>
	<16744578.PpAB9mIkF5@peggleto-mobl5.ger.corp.intel.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Tue, 3 Feb 2015 08:20:29 -0800
Message-ID: <CAK8F28=Q09VaCUW+rrVs_fCmvz99OxeJcpYfMi_QU1Py_O1z2A@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding 'sbin' to default path
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
X-List-Received-Date: Tue, 03 Feb 2015 16:21:08 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thanks very much for the explanation!  I'm coming from an Ubuntu world
where it seems they didn't follow Debian's lead in this case ;-).

As this does seem to be distro-dependent, I'll maintain my patch as
being a reasonable workaround and now understand why meta uses
non-sbin path.

Cheers,
Ash

On Tue, Feb 3, 2015 at 2:40 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Ash,
>
> On Friday 30 January 2015 10:28:21 Ash Charles wrote:
>> Why does the PATH variable in the dot.bashrc shipped by the base-files
>> not include 'sbin' paths?  It seems like any interactive user should
>> be able to call e.g. 'ifconfig' informationally---they should, and
>> would still be, blocked from calling 'ifconfig eth0 up'
>>
>> After looking at the PATH for a generic user on my local Ubuntu
>> system, I just added a patch to my meta layer to add the following
>> line to the dot.bashrc:
>>
>> export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
>>
>> It seems to work well---users created with the extrauser class pull
>> this default from the skel.
>>
>> As this is security related though, I wanted to ask the question to
>> make sure I'm not doing something silly, dangerous or otherwise
>> idiotic.
>
> I think this is largely a distro decision - some distros include the sbin
> directories to PATH for all users (e.g. Fedora), others reserve that for root
> only (e.g. Debian) on the assumption that everything in /sbin and /usr/sbin is
> intended for administration rather than normal users. I guess we are just
> picking up the default from base-files which comes from Debian.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

