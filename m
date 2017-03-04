Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B706DE00AE0; Sat,  4 Mar 2017 02:55:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D535AE00AB7
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 02:55:36 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170304105509915_0685
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 02:55:09 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=54184 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ck7L5-0003bC-6R
	for yocto@yoctoproject.org; Sat, 04 Mar 2017 05:55:04 -0500
Date: Sat, 4 Mar 2017 05:54:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703040539140.13666@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: standards for YP documentation markup?
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
X-List-Received-Date: Sat, 04 Mar 2017 10:55:37 -0000
Content-Type: text/plain; charset=US-ASCII


  more nitpicky pedantry ... i mentioned this once upon a long time
ago, but i thought i'd revisit it. there is a fair bit of
inconsistency in the docbook markup in the YP docs such that, even
though the end-product looks reasonable, the markup kind of bounces
around all over the place and, in future, would cause all sorts of
hilarity if one wanted to redefine the rendering.

  for instance, there are a number of terms that are apparently
supposed to be rendered in italics at the moment, such as filenames,
variable names, command names and so on. but even though docbook
supports explicit markup using:

  <filename>
  <varname>
  <command>

and so on, if you check the BSP guide, <filename> is being used all
over the place for all of the above; examples:

You use the <filename>yocto-bsp create</filename> sub-command to create
<filename>LICENSE_FLAGS_WHITELIST</filename>, the build stops and

and so on. sure, it all looks good right now, but if someone wanted to
make a trivial change to the rendering of, say, just commands, well,
oh dear ...

  other nitpickery i noticed in that same doc is inconsistency of
defining notes depending on whether they have more than one paragraph.
if there's just one para, it's very common to see:

  <note>
    blah blah
    woof woof
  </note>

OTOH, if it's a multi-para note, you see:

  <note>
    <para>
      ... para 1 ...
    </para>
    <para>
      ... para 2 ...
    </para>
  </note>

but look closely at the final rendering and you'll see that the use of
<para> clearly changes the final rendering in terms of line spacing.
and, occasionally, even a single-para note in the guide uses
<para></para> so it's not even consistently inconsistent. :-)

  anyway, yes, it's all picky, but it would be useful to have a short
guide on standard for YP docs markup so that, if someone starts a new
one, it can at least follow some guidelines.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



