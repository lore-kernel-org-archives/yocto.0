Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 151D9E00AE0; Sat,  4 Mar 2017 02:12:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFB2E00AB7
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 02:12:19 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170304101218141_0685
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 02:12:18 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=53202 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ck6fc-0000M2-C8
	for yocto@yoctoproject.org; Sat, 04 Mar 2017 05:12:12 -0500
Date: Sat, 4 Mar 2017 05:12:09 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703040457160.13236@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: occasional confusion in bsp guide, mixing BSP layer name and machine name
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
X-List-Received-Date: Sat, 04 Mar 2017 10:12:23 -0000
Content-Type: text/plain; charset=US-ASCII


  as i claw my through the bsp guide, i notice the occasional
confusion between referring to the BSP layer itself and a machine
supported by that layer.

  a couple times, i've found references to the alleged machine
configuration file "conf/bsp_name.conf" (which i'm changing to
"conf/machine.conf"). and in section 1.4, i read the snippet:

///// start

Following is a specific example to help you better understand the
process. Consider an example that customizes a recipe by adding a
BSP-specific configuration file named interfaces to the
init-ifupdown_1.0.bb recipe for machine "xyz" where the BSP layer also
supports several other machines. Do the following:

Edit the init-ifupdown_1.0.bbappend file so that it contains the
following:

  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

The append file needs to be in the meta-xyz/recipes-core/init-ifupdown
directory.

Create and place the new interfaces configuration file in the BSP's
layer here:

  meta-xyz/recipes-core/init-ifupdown/files/xyz-machine-one/interfaces

///// end

so we have a section that ostensibly describes the BSP layer
"meta-xyz", but first refers specifically to the machine "xyz" (even
though the layer is described as supporting multiple machines), and
further extends the directory structure with the machine name
"xyz-machine-one". is it just me, or is that confusing and
contradictory?

  sure, it's excruciatingly pedantic, but is there a doc-wide standard
for names to be used for stuff like this? otherwise, i'll just make
something up to clean this up (assuming, of course, that it needs
cleaning and i'm not just hopelessly misreading all of this).

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



