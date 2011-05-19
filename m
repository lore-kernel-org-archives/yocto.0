Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47D124C80FE9
	for <yocto@yoctoproject.org>; Wed, 18 May 2011 19:50:51 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4J0omKe001481;
	Thu, 19 May 2011 01:50:48 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00907-09; Thu, 19 May 2011 01:50:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4J0ogRV001473
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 19 May 2011 01:50:42 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
Date: Thu, 19 May 2011 01:10:07 +0100
Message-ID: <1305763807.3424.358.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Thu, 19 May 2011 00:50:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Liping,

On Fri, 2011-05-13 at 09:50 +0800, Liping Ke wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> Below four patches are for putting extra requested fields inito different
> cache files instead of using only on bb_cache.dat. Now image creator need
> extra three fields. And in the future, there might be more similar requests.
> For each extra requestor, we will save the requested fields data into a
> separate cache files so that those who don't need it will not be impacted
> with larger fields and large data files.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/cache_impl
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache_impl
> 
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
> 
> 
> Liping Ke (4):
>   This patch introduce new param bitbake_mode into Cache.py.
>   This patch splits Cache Data Retrieve method from Data Fields.
>   This patch introduces Extra required fields for image creator.
>   This patch implements independent cache for Extra Cache Fields
>     Request

These patches are good and the feedback and explanation here is to
illustrate the bigger picture rather than any criticism of these
patches. I'm hoping to explain the alterations I think this codebase
needs in order to allow bitbake to expand and grow which is our main
objective.

From an overall design standpoint, the place I want to get to is where
we can arbitrarily extend and add bitbake UIs without needing to alter
the core cache code or functionality. To do this we need a clean split
between the cache handling code and the data contained within it. I know
Chris has made changes here moving us toward that but we need to
complete them and remove the detail which I know bugs both Chris and
myself which is that the data is referenced in two places within this
code (RecipeInfo and CacheData).

The place I want to get to is therefore where we have something like an
overall set of cache definitions as classes like:

BaseRecipeInfo
HobRecipeInfo
NewUIRecipeInfo

and each would have a name which would trigger their use (e.g. "base",
"hob" and "newui") through the extracaches variable as in your code.

Your code actually follows the model we need to adopt but I'd make the
following name changes:

RecipeInfo -> BaseRecipeInfo
RecipeRetrieve -> RecipeInfo
HobExtraRecipeInfo -> HobRecipeInfo

RecipeInfo would be a base class which BaseRecipeInfo, HobRecipeInfo and
NewUIRecipeInfo would derive from. The definition would be something
like the existing RecipeInfo but there would be some entries in the
class that any user would be expected to provide. I tried to provide an
example of this and I ran into issues due to the use of namedtuple. I've
talked to Chris and if that usage is going to hold us from cleaning some
of this up, we agreed that we could use something else like a dict. The
trouble is the field list of named tuple needs to be determined in
advance of the class creation where as we need something we can change
within the class itself easily.

RecipeInfo would look something like:

class RecipeInfo(object):

    name = "Override me!"
    cachefile = "bb_extracache_" + self.name + ".dat"

    @classmethod
    def listvar(cls, var, metadata):
        return cls.getvar(var, metadata).split()

    @classmethod
    def intvar(cls, var, metadata):
        return int(cls.getvar(var, metadata) or 0)

    @classmethod
    def depvar(cls, var, metadata):
        return bb.utils.explode_deps(cls.getvar(var, metadata))

    @classmethod
    def pkgvar(cls, var, packages, metadata):
        return dict((pkg, cls.depvar("%s_%s" % (var, pkg), metadata))
                    for pkg in packages)

    @classmethod
    def taskvar(cls, var, tasks, metadata):
        return dict((task, cls.getvar("%s_task-%s" % (var, task), metadata))
                    for task in tasks)

    @classmethod
    def flaglist(cls, flag, varlist, metadata):
        return dict((var, metadata.getVarFlag(var, flag, True))
                    for var in varlist)

BaseRecipeInfo would look something like:

class BaseRecipeInfo(RecipeInfo):

    name = "base"
    cachefile = "bb_cache.dat"

    @classmethod
    def cachedata_init(cls, cachedata):
        cachedata.task_deps = {}
        cachedata.pkg_pn = defaultdict(list)
        cachedata.pkg_fn = {}
        cachedata.pkg_pepvpr = {}
        cachedata.pkg_dp = {}
        [...]

    def __init__(self, filename, metadata):

        self.file_depends = metadata.getVar('__depends', False)
        self.timestamp    = bb.parse.cached_mtime(filename)
        self.variants     = self.listvar('__VARIANTS', metadata) + ['']
        self.nocache      = self.getvar('__BB_DONT_CACHE', metadata)

        if self.getvar('__SKIPPED', metadata):
            self.skipped = True
            return

        self.tasks = metadata.getVar('__BBTASKS', False)

        self.pn = self.getvar('PN', metadata)
        packages = self.listvar('PACKAGES', metadata)
        if not self.pn in packages:
            packages.append(self.pn)

        self.basetaskhashes   = self.taskvar('BB_BASEHASH', self.tasks, metadata)
        self.hashfilename     = self.getvar('BB_HASHFILENAME', metadata)

        self.file_depends     = metadata.getVar('__depends', False)
        self.task_deps        = metadata.getVar('_task_deps', False) or {'tasks': [], 'parents': {}}
        self.variants         = self.listvar('__VARIANTS', metadata) + ['']

        self.skipped          = False
        self.timestamp        = bb.parse.cached_mtime(filename)
        self.packages         = self.listvar('PACKAGES', metadata)

        self.pe               = self.getvar('PE', metadata)
        self.pv               = self.getvar('PV', metadata)
        self.pr               = self.getvar('PR', metadata)
        self.defaultpref      = self.intvar('DEFAULT_PREFERENCE', metadata)
        self.broken           = self.getvar('BROKEN', metadata)
        self.not_world        = self.getvar('EXCLUDE_FROM_WORLD', metadata)
        self.stamp            = self.getvar('STAMP', metadata)
        self.stamp_extrainfo  = self.flaglist('stamp-extra-info', self.tasks, metadata)
        self.packages_dynamic = self.listvar('PACKAGES_DYNAMIC', metadata)
        self.depends          = self.depvar('DEPENDS', metadata)
        self.provides         = self.depvar('PROVIDES', metadata)
        self.rdepends         = self.depvar('RDEPENDS', metadata)
        self.rprovides        = self.depvar('RPROVIDES', metadata)
        self.rrecommends      = self.depvar('RRECOMMENDS', metadata)
        self.rprovides_pkg    = self.pkgvar('RPROVIDES', packages, metadata)
        self.rdepends_pkg     = self.pkgvar('RDEPENDS', packages, metadata)
        self.rrecommends_pkg  = self.pkgvar('RRECOMMENDS', packages, metadata)
        self.inherits         = self.getvar('__inherit_cache', metadata)
        self.summary          = self.getvar('SUMMARY', metadata)
        self.license          = self.getvar('LICENSE', metadata)
        self.section          = self.getvar('SECTION', metadata)
        self.fakerootenv      = self.getvar('FAKEROOTENV', metadata)
        self.fakerootdirs     = self.getvar('FAKEROOTDIRS', metadata)

    def add_cachedata(self, cachedata, fn):
        cachedata.task_deps[fn] = self.task_deps
        cachedata.pkg_fn[fn] = self.pn
        cachedata.pkg_pn[self.pn].append(fn)
        cachedata.pkg_pepvpr[fn] = (self.pe, self.pv, self.pr)
        [...]

HobRecipeInfo would be similar but with its specific field requirements.

Once we've made this split, the code that handles the caches can become
simpler. In each place RecipeInfo is used, we can turn it into an
iterator which iterates over a list of caches. In the default case this
list would just be one (BaseRecipeInfo). With Hob enabled it would be
two (BaseRecipeInfo and HobRecipeInfo). It would equally handle ten
different entries, it would just iterate over them. We'd always require
the BaseRecipeInfo to be present in this list.

In CacheData, we'd take the list of caches and call into the
cachedata_init() and add_cachedata() hooks. We'd need a namespace
convention to ensure that whilst they write to the same CacheData object
there is a prefix to ensure the data is contained.

How do we turn a list of names of caches passed as extracaches into a
list of objects? We can use code like in runqueue.py for handling the
schedulers:

        schedulers = set(obj for obj in globals().values()
                             if type(obj) is type and
                                issubclass(obj, RunQueueScheduler))

so by checking for anything subclassing RecipeInfo we'd have a list of
cache classes to choose from.


Liping: Does this make sense? Is there anything I need to clarify? Do
you want to work on this further from here or do you want me to take
this further?

Cheers,

Richard





