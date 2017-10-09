Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51EF4E00D3F; Mon,  9 Oct 2017 06:34:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AC9E00D1B
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 06:34:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v99DY0F6012616
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Oct 2017 06:34:00 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 9 Oct 2017 06:33:59 -0700
To: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <TU4PR8401MB1040AD278D9EA3A0B1A82E7599710@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <5b3b0fdb-5270-3163-da82-3183474d26f9@windriver.com>
Date: Mon, 9 Oct 2017 08:33:59 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <TU4PR8401MB1040AD278D9EA3A0B1A82E7599710@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Framework to implement mirroring in Yocto
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
X-List-Received-Date: Mon, 09 Oct 2017 13:34:04 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/6/17 5:08 PM, Gutierrez, Hernan Ildefonso (Boise R&D, FW) wrote:
> Hi,
> 
>  
> 
> We are planning to implement a mirror for both source code downloaded and
> sscache in our work environment.
> 

We mirror a ton of code for our customers.  We have two types or mirrors that we
deliver.  Raw 'git servers' and tarball (or equivalent) mirrors.

The way that we populate these mirrors is to use bitbake with a fetchall
'universe'.  That way everything that could be downloaded (with a few
exceptions) is downloaded.

git archives, we identify and create git mirrors in an external server.  This
server regularly updates the git servers from the upstream location.  This
allows us to have git mirrors that are 'live' git servers, and not just tarballs
that could get out of sync.

For this work, you can easily setup a 'premirror' in your projects of the format:

PREMIRRORS_append = " \
     git://.*/.* git://mirror.hostname.here/git/MIRRORNAME;protocol=git \n \"
"

You can adjust the protocol to be file, git, or http (as necessary for your
environment).  (In our case, it's usually file.)

For the files, it's even easier.  Just have a shared fileserver that contains
all of the downloads:

PREMIRRORS_append = " \
     .*://.*/.* file://<path_to_mirror>/downloads/ \n \
"

> 
> We are planning to use Nexus and Nuget to allow storage and versioning control.
> We don’t know if these are the right tools.
> 

If you want to formalize this further, there are alternative ways to do this.
(We use an approach where we have 'download layers'.)  Between the setup program
(https://github.com/Wind-River/wr-lx-setup) and these special download layers
our users can download (to their local system) both the mirrors and tarball
downloads.

Our typical download layer looks like:

conf/layer.conf:

BBFILE_COLLECTIONS += "core-dl"
BBFILE_PATTERN_core-dl = ""
BBFILE_PATTERN_IGNORE_EMPTY_core-dl = "1"

# This should only be incremented on significant changes that will
# cause compatibility issues with other layers
LAYERVERSION_core-dl = "2.4"

# We have a pre-populated downloads directory, add to PREMIRRORS
PREMIRRORS_append = " \
     .*://.*/.* file://${LAYERDIR}/downloads/ \n \
     git://.*/.* git://${LAYERDIR}/git/MIRRORNAME;protocol=file \n \
"

Then insides of the 'downloads' directory we have a copy of all of the tarballs
used by the 'meta' layer (oe-core).  [note this can grow fairly large, so we
generally have a 2.4, then a 2.5, etc versions to keep the size managable.]

The setup program uses a local layer index to control everything.  We have a
single local patch to our oe-core that adds a 'recommendation' on this new
download layer.

LAYERRECOMMENDS_core = "core-dl (= 2.4)"


The layer index will bring this is as an 'optional' dependency which the setup
program can then use.   So if you do this for all of the layers you use -- then
a user calling setup (with our private layer index) will automatically get the
downloads that match only the layers they choose to bring into their project.

(The setup program also has a --mirror option, will will allow a local user to
mirror down the layer index contents, as well as the layers that they are using.
 This is intended both for our commercial product delivery, but also for
customers to be able to snapshot a given installation so they have all of the
code necessary to reproduce the environment in the future.)

> 
> Since we are about to embark in this project, before starting I wanted to know
> if you have some pointers on how can be implemented a mirroring framework for yocto.
> 

You can start simple, and just setup a local fileserver and git server with the
premirror setup.

You can extend this to include custom delivery and installation to customers if
this is appropriate for your environment.

(Note, the setup program is current external to OE / YP.  We are working to
integrate this into bitbake.  While there is no specific timeline promised, we
started this work in the 2.4 timeframe, and I expect much of what I explained
above will be implemented in the 2.5 timeframe.  But until then, you can use the
wr-lx-setup repository I mentioned.)

--Mark

> 
> Not sure if there are some common tools (other tools) with which yocto
> integrates nicely.
> 
>  
> 
> Any pointers will be appreciated,
> 
>  
> 
> --Hernan
> 
>  
> 
> PS> We are in morty branch currently.
> 
> 
> 


