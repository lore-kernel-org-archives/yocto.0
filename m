Return-Path: <marc.ferland@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39842E013E6
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:53:53 -0700 (PDT)
Received: by ieak12 with SMTP id k12so338360iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=CzM20Ztuaqc69dRh/IaD9I4X8wLygKnmpkCFKeOKjbk=;
	b=S+RlAbrNgFbj+w3Bom0yGcM502A4wF0pgKsVnsrZinbLcH0pK6V3xgkNS6htVNzxPO
	x2j5hx+ECXtbVO5v4TUVJ7zigJR9QKU3FAMHo2Vxzx/SlZnMOo/qNWVQmalfGJ/1wTjb
	Z0cZ5VyZprPhcSY72JB087wLFsC4/mALRBCRAaDsosd9JIu5BgphkpUJW2watUchXnQj
	aY3xkQUk8JJrBY3Ih7wx7R8fNt7SXJYYxVsdXuXf3N9us6nmIv2t4/CfbU6B1blVfbE1
	TPIp3WPniAQUxRnrh+CaGKM1tDtpELhlL3KsP7nc9XusLgtgeTcgv54j7bmJBtq4X40Y
	WpqA==
Received: by 10.50.88.194 with SMTP id bi2mr3929547igb.47.1348088032746;
	Wed, 19 Sep 2012 13:53:52 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id bo7sm6302413igb.2.2012.09.19.13.53.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 19 Sep 2012 13:53:51 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 19 Sep 2012 16:53:53 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Saul Wold <sgw@linux.intel.com>
References: <87ipb9d9u8.fsf@sonatest.com> <505A2FAF.60609@linux.intel.com>
Date: Wed, 19 Sep 2012 16:53:53 -0400
In-Reply-To: <505A2FAF.60609@linux.intel.com> (Saul Wold's message of "Wed, 19
	Sep 2012 13:48:47 -0700")
Message-ID: <87r4px91jy.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: About bug 2331
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Sep 2012 20:53:53 -0000
Content-Type: text/plain

Saul Wold <sgw@linux.intel.com> writes:

> On 09/19/2012 01:41 PM, Marc Ferland wrote:
>> Hi,
>>
>> I'm currently trying to create a "live" system with squashfs+unionfs and
>> I stumbled on the same bug described here:
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2331
>>
>> I was wondering if there was a plan to resolve this issue for 1.3?
>>
> Marc,
>
> It seems to be marked as resolved and verified, is there still and
> issue?  If so we need to reopen this bug.  Or are you referring to the
> underlying issue?
>
I was referring to the underlying issue.

