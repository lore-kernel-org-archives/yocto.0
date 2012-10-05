Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 904A9E012F0
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 06:58:41 -0700 (PDT)
Received: (qmail 31304 invoked by uid 1003); 5 Oct 2012 13:58:36 -0000
Received: from unknown (HELO ?192.168.1.105?)
	(philip@opensdr.com@96.240.161.134)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	5 Oct 2012 13:58:36 -0000
Message-ID: <506EE78B.6060607@balister.org>
Date: Fri, 05 Oct 2012 09:58:35 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Making recipes depend on specific layers
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
X-List-Received-Date: Fri, 05 Oct 2012 13:58:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I run into problems (typically with BSP layers) where I want the layer 
to build only against oe-core, but I also would like to have recipes 
that depend on other layers. Typically, a "complex" image that uses 
packages built from other layers.

Now, I could just make a shim layer that contains the recipes that 
depends on a larger set of layers, but this gets annoying.

What I'd like to do is provide a way for recipes to say they depend on 
other layers, but if that layer is not present, parsing should not fail. 
Obviously, attempting to build such a recipe would fail (with a suitable 
error message).

Richard showed me some Python I can use to do this, but I'd like to know 
if this seems useful to other people.

Obviously, switching layer sin and out can lead to madness, but I'd 
rather not try to protect the end user from every stupid thing they can 
do at the expense of making thing more complex from a shear number of 
layers view.

Philip

