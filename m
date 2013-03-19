Return-Path: <marc.ferland@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A689E006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 14:27:53 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jx10so860009veb.11
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 14:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version:content-type;
	bh=Jw4wB1WPkIu7272qlM/memMA8pET6cvf08ADzlfrjTU=;
	b=Typ8+7LaRVQTJg+NdUdkDpyqT4C1uzxjsMlJSHZkGr0nfdjx7HROPzymsDB0ljqrWL
	aLCCDbf9F9tJi4UGRmrrQ+nv6fsnnlVTYKstEPPTMc1nfow6yvOmfFsbOHJj3g6Pjt3l
	jo+UDDeCXJeSd4PEKcMyOixZ8TfsLVvLulK2U/wCDID9QHwlhPRYKS6IEvdL06ngLPQI
	kpp0F3/EQdWz7Mcmg2B12blv6pmiyLnelLmcO+10e8l+HyHJ13i5Qd++cSB354oVm6vN
	HC/FqA20xQwEftl7QoHR6Adp9q5BEXsuUMffE/ATlkenaBVLSl8H6Dgcu5lwHkJAPWeL
	QCSw==
X-Received: by 10.52.24.133 with SMTP id u5mr4029056vdf.49.1363728472680;
	Tue, 19 Mar 2013 14:27:52 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id tf2sm31486943veb.8.2013.03.19.14.27.50
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 14:27:51 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 19 Mar 2013 17:28:01 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
Date: Tue, 19 Mar 2013 17:28:01 -0400
In-Reply-To: <56C806C0B65D44ADA7D6314F4051E91E@PAULD> (Paul D. DeRocco's
	message of "Tue, 12 Mar 2013 23:53:47 -0700")
Message-ID: <87r4jbcc66.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Tue, 19 Mar 2013 21:27:53 -0000
Content-Type: text/plain

"Paul D. DeRocco" <pderocco@ix.netcom.com> writes:

>> From: Burton, Ross
>> 
>> On 12 March 2013 18:20, Paul D. DeRocco 
>> <pderocco@ix.netcom.com> wrote:
>> > It says "attempted 145 tasks of which 145 didn't need to be 
>> > rerun". So it thinks it's already there.
>> 
>> Indeed.   Something is breaking - you'll have to mail the whole
>> configure log from autogen to attempt to debug this.
>
> One thing that I notice is that in my build/tmp/work/i686-linux, I have two
> directories, autogen-native-5.12-r2 and autogen-native-5.12-r3. The first is
> from my successful out-of-the-box build of a week ago; the second is from my
> current failed build. What I did in between was to add the
> openembedded-core/meta and meta-openembedded/meta-oe layers in order to
> include Samba. The two logs deviate at line 275 where the old successful one
> says "checking whether with-libguile was specified... no" and the new failed
> one says "checking for i686-linux-pkg-config... no". I suspect something in
> the OE stuff appended to a recipe, which is leading to the problem.
>
Same thing here. Everything was building fine until I added the meta-oe
layer.

Does one of you have a workaround for this?

Thanks,

Marc

