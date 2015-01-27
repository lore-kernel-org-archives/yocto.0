Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3C35E00815; Tue, 27 Jan 2015 08:53:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95B7E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 08:53:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0RGrCQt002874
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 08:53:13 -0800 (PST)
Received: from msp-dhcp46.wrs.com (172.25.34.46) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 27 Jan 2015 08:53:12 -0800
Message-ID: <54C7C278.6020606@windriver.com>
Date: Tue, 27 Jan 2015 10:53:12 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAJrRHk5GoTZAB9hxOtEkjBP3fQoBB2u+H7Z5eD9Jy4hqwvmfTg@mail.gmail.com>
In-Reply-To: <CAJrRHk5GoTZAB9hxOtEkjBP3fQoBB2u+H7Z5eD9Jy4hqwvmfTg@mail.gmail.com>
Subject: Re: ALTERNATIVE_TARGET, ALTERNATIVE_PRIORITY problem
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
X-List-Received-Date: Tue, 27 Jan 2015 16:53:17 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/27/15 9:37 AM, Joseph Andrew de la Peña wrote:
> Good day Yocto Community,
> 
> I would like to ask what's wrong with my implementation with update-alternatives:

I think that you have some of the variables confused below.  I've quoted bits of
the class's header (internal documentation):

# List all of the alternatives needed by a package:
# ALTERNATIVE_<pkg> = "name1 name2 name3 ..."

# The pathname of the link
# ALTERNATIVE_LINK_NAME[name] = "target"

# NOTE: If ALTERNATIVE_LINK_NAME is not defined, it defaults to ${bindir}/name


# The default link to create for all targets
# ALTERNATIVE_TARGET = "target"

or

# A non-default link to create for a target
# ALTERNATIVE_TARGET[name] = "target"

# A package specific link for a target
# ALTERNATIVE_TARGET_<pkg>[name] = "target"
#
#   This is useful when a recipe provides multiple alternatives for the
#   same item.


So if you have a single binary called 'bar', and want it to show up as bar1,
bar2 and bar3 using the alternatives you would do:

PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
ALTERNATIVE_${PN}-bar1 = "bar1"
ALTERNATIVE_${PN}-bar2 = "bar2"
ALTERNATIVE_${PN}-bar3 = "bar3"

ALTERNATIVE_TARGET = "/bin/bar"

ALTERNATIVE_LINK_NAME[bar1] = "/bin/bar1"
ALTERNATIVE_LINK_NAME[bar2] = "/bin/bar2"
ALTERNATIVE_LINK_NAME[bar3] = "/bin/bar3"

FILES_${PN} = "/bin/bar"

The result would be:

package ${PN} contains /bin/bar

package ${PN}-bar1 would create a link /bin/bar1 -> /bin/bar
package ${PN}-bar2 would create a link /bin/bar2 -> /bin/bar
package ${PN}-bar3 would create a link /bin/bar3 -> /bin/bar


If you want to do the other way around, have three packages that all provide
'bar'.  You would do:

PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
ALTERNATIVE_${PN}-bar1 = "bar"
ALTERNATIVE_${PN}-bar2 = "bar"
ALTERNATIVE_${PN}-bar3 = "bar"

ALTERNATIVE_LINK_NAME[bar] = "/bin/bar"

ALTERNATIVE_TARGET_${PN}-bar1 = "/bin/bar1"
ALTERNATIVE_TARGET_${PN}-bar2 = "/bin/bar2"
ALTERNATIVE_TARGET_${PN}-bar3 = "/bin/bar3"

FILES_${PN}-bar1 = "/bin/bar1"
FILES_${PN}-bar2 = "/bin/bar2"
FILES_${PN}-bar3 = "/bin/bar3"


package ${PN}-bar1 would own a file /bin/bar1 and link it to /bin/bar
package ${PN}-bar2 would own a file /bin/bar2 and link it to /bin/bar
package ${PN}-bar3 would own a file /bin/bar3 and link it to /bin/bar


(You can verify the above by looking at the package data, if using RPM, rpm -qp
<package> --scripts will show you the logic for adding the alternative.)


As for the install time, the packaging system will "choose" to install a package
that meets the dependency you select.  If you don't specifically name ${PN}-bar1
in your install, it may not be selected in favor of one of the other providers.
 The PRIORITY only affects if multiple packages are installed, which one takes
priority over the others.

--Mark

> =================
> 
> *bar_git.bb <http://bar_git.bb/>:*
> 
> PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
> RPROVIDES_${PN}-bar1 = "bar"
> RPROVIDES_${PN}-bar2 = "bar"
> RPROVIDES_${PN}-bar3 = "bar"
> 
> ALTERNATIVE_LINK_NAME[bar] = "${datadir}/foo/bar"
> 
> ALTERNATIVE_${PN}-bar1 = "bar"
> ALTERNATIVE_TARGET_${PN}-bar1 = "${datadir}/foo/bar1"
> ALTERNATIVE_PRIORITY_${PN}-bar1 = "99"
> 
> ALTERNATIVE_${PN}-bar2 = "bar"
> ALTERNATIVE_TARGET_${PN}-bar2 = "${datadir}/foo/bar2"
> ALTERNATIVE_PRIORITY_${PN}-bar2 = "98"
> 
> ALTERNATIVE_${PN}-bar3 = "bar"
> ALTERNATIVE_TARGET_${PN}-bar3 = "${datadir}/foo/bar3"
> ALTERNATIVE_PRIORITY_${PN}-bar3 = "97"
> 
> inherit update-alternatives
> 
> *packagegroup-foobar.bb <http://packagegroup-foobar.bb/>:*
> 
> RDEPENDS_foobar = "bar"
> 
> =================
> 
> The end result is always bar3 is present and bar is pointing to bar3. I never
> get bar1 being present which is the result I want.
> 
> Please do recommend how will I properly use ALTERNATIVE_TARGET and
> ALTERNATIVE_PRIORITY.
> 
> Thanks,
> Joseph
> 
> 


