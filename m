Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94A18E013A6
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 08:59:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q55FxQvH018007
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Jun 2012 08:59:26 -0700 (PDT)
Received: from msp-dhcp45.wrs.com (172.25.34.45) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 5 Jun 2012 08:59:25 -0700
Message-ID: <4FCE2CDC.3030207@windriver.com>
Date: Tue, 5 Jun 2012 10:59:24 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4FCC2833.5060508@linux.intel.com>
In-Reply-To: <4FCC2833.5060508@linux.intel.com>
Subject: Re: [RFC] Split and revamp distro_tracking_fields.inc
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
X-List-Received-Date: Tue, 05 Jun 2012 15:59:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/3/12 10:14 PM, Saul Wold wrote:
>
> Folks,
>
> As this project has progressed, we have found the distro_tracking_fields
> to become a bit cumbersome and dated, I want to therefore propose we get
> rid of it ;-), nah that would be too easy!
>
> I would like to propose the following, split it into smaller files with
> more specific meaning, and move some of the data contained in the
> original file into the recipes directly. Some of the fields will be
> deprecated, others renamed and finally others will be used for a burn
> down list of things to be checked or converted to be automagically
> generated.
>
> Currently the data contained in these fields is used to generate the
> database that the Package reporting system uses and will continue to use
> in it's new form. (https://packages.yoctoproject.org) We also use the
> data for tracking the recipe updating to ensure we keep the system as up
> to date as possible.
>
> The new split would make this data part of Poky in meta-yocto, and not
> in oe-core (other than the modifications to the recipes). The split
> would be as follows:
>
> maintainers.inc
>    - RECIPE_MAINTAINER = "Full Name<user@example.com>"
>    - This is the name of the person currently watching the upstream and
>      updating the recipe and/or fixing bugs filed against, this person
>      should also help review incoming patches for that recipe.
>    - NOTE to REVIEWERS: I still need to better define what the Roles and
> Responsibilities of a maintainer are for recipes!
>
> recipe_color.inc
>    - RECIPE_COLOR = "green|yellow|red" - defaults to green
>    - Burn down list of recipes that need to be checked for general issues
>    - red means there are some issues that might be legacy or function
>      need review
>    - yellow means recipe needs review
>    - once reviewed and issues resolved the recipe's entry can be removed
>
> upstream_tracking.inc
>    - RECIPE_UPSTREAM_VERSION = "<version>"
>    - RECIPE_UPSTREAM_DATE = "Mmm, dd, yyyy"
>      - Version info from the Upstream, mostly this can be generated, but
>        in some cases we need to track it manually, this should just be
>        the manually tracked info, it currently contains more than that,
>        this will be corrected over time as we can generate it
>        automatically
>    - RECIPE_NO_UPDATE_REASON = "Free form text"
>      - Used by the package and update tracking to explain why a recipe
>        should not be updated.
>

No real comments on the above.. I think that is all fine.

> Insert into recipe.bb or .inc files:

My biggest concern with this is that any fields only get updated when the recipe 
itself is changed in some way... package uprev or modification.  Arbitrary 
changes to the fields will cause checksums (file and otherwise) to invalidate 
causing reparsing and possibly even package rebuilds.  Both of which take 
additional time....

>    - NOTES =<free form text>
>      - was RECIPE_COMMENTS
>      - Information that would useful in the package reporting system, but
>        not part of the DESCRIPTION, could be existing comments

Right now anything tricky with an uprev or comments about why it was done a 
certain way are generally stored as comments in the recipe.  Formalizing it 
would be nice.  Only concern with this is the word "NOTES" seems awfully generic.

>    - CHECK_DATE = "Mmm, dd, yyyy"
>      - was RECIPE_MANUAL_CHECK_DATE
>      - The date when the upstream was last checked, specifically for the
>        Manual check process when a recipe's upstream could not be checked
>        automagically, this should become fewer and fewer as we determine
>        ways to check.

This is a primary concern.  If this is updated each time someone checks the 
recipes are still current and don't need modifications -- we're forcing a 
modification into the system.  One alternative approach:

Document the date when the recipe was upreved.  Then in a separate file, 
document the check dates.  Then the check dates and the uprev dates can be 
compared and it'll be easier to watch to see if things are being neglected or 
let go out of date.

(Note, using git, it should be possible to also discover the data of the uprev 
as well....)

>    - DISTRO_PN_ALIAS = "Distro:package alias, Distro:package alias, ..."
>      - This is a comma separated list of mainline distros, such as
>        Fedora, Debian, OpenSuse which also ship a similar package, but
>        with a different name possibly.
>      - Used by package reporting system and is fairly static
>      - Many Commercial users would like to know that a given package is
>        already shipping with other distributions

I've not seen this requirement from any of my customers.  I can understand the 
uses of this -- how widely used is this?  if it's not, then chances are there 
may be licensing or functional issues with the component...  But I'm not sure if 
this is useful, or if the OE-core contributors would want the additional work 
involved.

> Any fields not mentioned above will be deprecated.
>
> The first three files are ready to merged, I need to finish updating the
> recipes for the last part.  This will not require any PR bumps as there
> is no packaging changes, just metadata that is used by the package
> reporting system.
>
>
> Comments?


