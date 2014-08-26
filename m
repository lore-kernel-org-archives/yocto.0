Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F0CFE00809; Tue, 26 Aug 2014 07:35:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C07E007F6
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:35:52 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id a108so14954901qge.30
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:35:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=CbCtWneyIFxm/U0L6iJmt+qCf6RAF3W1coKdkOWRHaU=;
	b=HESBnI0axWASZ13g41jgyU4yq4nrlcrfZ+bLEvJRTNL8lAq+eJ8C+c72foZRR+TPOZ
	blkMMIHjxAKch/9scoIiOxOvDKULmokoN44EwDPjJ7iEI/4mWaBIxCnGtyz8CvjmG3Am
	od886n9JjmM1k9PuL9bSr+/L6VAuc/j2IV6P+tJihP5Gj/K0Ue4NzL6shO2UbjBcS+Dr
	GufxicCyi1TPZREU4ZkOnZE+pb5Dr/i6h8nbXduTVdKrdA96V3cVDOLjVI5fXQii8iwI
	O4XUs/ysf6rjf0iRqFisu6dBlvB4gtECGZMjL4LsAEWo4yObEzDEUIvp5YWSftnGB24g
	H4ow==
X-Gm-Message-State: ALoCoQllnW34ssf6DsD7owzvPnRZxtmdJ2YVRfsd3V0YS2KXjyZQ01gpRQYKxk2uHN522SNIMyPn
X-Received: by 10.140.105.138 with SMTP id c10mr16645049qgf.15.1409063752382; 
	Tue, 26 Aug 2014 07:35:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Tue, 26 Aug 2014 07:35:32 -0700 (PDT)
In-Reply-To: <1409063092-17040-2-git-send-email-marius.avram@intel.com>
References: <1409063092-17040-1-git-send-email-marius.avram@intel.com>
	<1409063092-17040-2-git-send-email-marius.avram@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Aug 2014 15:35:32 +0100
Message-ID: <CAJTo0LYjqiRkBxc+en0S5qsvw63t7eWM6uG75SEvBXaYu0eeqA@mail.gmail.com>
To: Marius Avram <marius.avram@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Fix USB not mounted in file manager
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
X-List-Received-Date: Tue, 26 Aug 2014 14:35:59 -0000
Content-Type: text/plain; charset=UTF-8

Wrong list, this should go to oe-core@.

On 26 August 2014 15:24, Marius Avram <marius.avram@intel.com> wrote:
> +Upstream-Status: Upstream-Status: Inappropriate

Duplicated tag, and probably wise to add "(OE-specific)" to inappropriate.

Ross

