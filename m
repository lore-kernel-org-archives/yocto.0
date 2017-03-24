Return-Path: <cody@arrc.ou.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B3BAE007AD; Fri, 24 Mar 2017 07:11:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B314E003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:11:05 -0700 (PDT)
Received: by mail-ot0-f195.google.com with SMTP id i1so404055ota.3
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=arrc-ou-edu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LZFSJe4mlqQ+LaP8waTgCLgJ5jOoGDjURiPCXNoKAt8=;
	b=UFNRzJZb391C3QJQcGLo5U5vPbUU0OlrUx4pz46QNilMPXqsZKu3K/hbV6N1vCEap7
	mDjuHKfxKLonk5XfBHRPsvd9nnXBh7cRy2qv0N39W2hxnMbqFW0RI470F+CFhekODZCn
	cc9gvrYpPRm0kpB/cBRbhwMjMXV15QaFwe5LjcPTVQiDOG3y1SUnkgEt4d/pB8fIMPHO
	tj5ivYmSPOMxluYfBLuSrzhFVCdi1iCxKPptjXUWLwO9sqS8v/izMn43RvaajgAaE3zk
	VNmCgectypZnnpca7fplJgk4kSXWfb3cSU33D88pflHMUVZoptrJRdu13zP3PLvavbdH
	xOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LZFSJe4mlqQ+LaP8waTgCLgJ5jOoGDjURiPCXNoKAt8=;
	b=KCTgkRaXKjhH7nq66KmQvvRTSHfPwum4ZPv7Aha46TNIFXYNioGgU48M77c4SVRXk0
	l2Lt8V8s5FRZSLRD77oPFLImUWmNWmkJgIR43c9mnCizSP62WQpWu/96OqiBWcB80xbp
	opFmy0N0h4zJkC5xNa8yYdq8cvxPtGahGkg/o/qLswtESO3DFCWPxrJCWBBF9xvegGG6
	Wvp6/28hzLvc/85pBwuV3KtB/LDmMiyb9dhV3MrE5AQnYNxQWY0jKlfuQEBSTP5a/qrd
	qffHQ0ww1tMaBg0NKi/2VvV1remeT670dy9ZKYkZb+0dvdeFzvKtMNZuu4GolfZrmUuW
	67uA==
X-Gm-Message-State: AFeK/H1aeDq/dxsoJI9rlipeZ3yNlwAEDGVIx3RNUJLwY+flUwIkPVBSPaUet0kovyVQJSlmC/Y4CN90rcddDuL8
X-Received: by 10.157.54.161 with SMTP id h30mr4136898otc.30.1490364665436;
	Fri, 24 Mar 2017 07:11:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.203 with HTTP; Fri, 24 Mar 2017 07:11:05 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1703240952060.21856@localhost.localdomain>
References: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
	<alpine.LFD.2.20.1703240952060.21856@localhost.localdomain>
From: Cody Piersall <cody@arrc.ou.edu>
Date: Fri, 24 Mar 2017 09:11:05 -0500
Message-ID: <CAKEinFxouTq54_Qorn2fg0HbvshhokhMcT8MQ-z9=0gBo307Pg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Fri, 24 Mar 2017 14:11:09 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 24, 2017 at 8:53 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Fri, 24 Mar 2017, Cody Piersall wrote:
>> I am building zsh from meta-oe layer, and it has a do_install_append()
>> function defined like this:
>>
>> do_install_append () {
>>     rm -fr ${D}/usr/share
>> }
>>
>> which gets rid of lots lots of useful functionality, like
>> context-aware autocompletion.  Can a bbappend file get rid of that
>> function, or do I need to edit the actual recipe? I've attempted
>> defining an empty do_install_append() { : } but it didn't work.
>
>   it might be worth asking why zsh is doing that in the first place.
> if one doesn't want all that stuff, *that* is where an append could be
> used to remove it. i think zsh removing it by default is
> inappropriate.
>
> rday

Good point. I've now posted a patch to the meta-oe mailing list:
http://lists.openembedded.org/pipermail/openembedded-core/2017-March/134575.html

Cody

