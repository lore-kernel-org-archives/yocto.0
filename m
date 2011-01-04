Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D9704C80050
	for <yocto@yoctoproject.org>; Mon,  3 Jan 2011 18:50:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 16:50:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="693231749"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.67]) ([10.7.201.67])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 16:50:22 -0800
Message-ID: <4D226EF1.6020800@intel.com>
Date: Mon, 03 Jan 2011 16:50:57 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <cover.1294101386.git.elizabeth.flanagan@intel.com>
	<cce09be8066b43204de7b879948b04ed0f2f15cb.1294101386.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cce09be8066b43204de7b879948b04ed0f2f15cb.1294101386.git.elizabeth.flanagan@intel.com>
Subject: Re: [PATCH 1/1] Fix for easy_install, source tarball and 0.8.3
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
X-List-Received-Date: Tue, 04 Jan 2011 00:50:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Sorry about this. My initial reply to scrap the previous pull went to
only me and for some reason my generation of the second pull request is
pulling the wrong branch.

-b
On 01/03/2011 04:39 PM, Flanagan, Elizabeth wrote:
> A few fixes here. First, reverting down to 0.8.2 for the time being since
> there was issues with 0.8.3's git poller. Also, fixing an issue with how
> bb setup.py works when setuptools is installed.
> 
> Fixing a known error in how generate sources tarball performs
> 
> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  scripts/poky-autobuild-generate-sources-tarball |    2 +-
>  scripts/poky-setup-autobuilder                  |   27 +++++++++++++++-------
>  2 files changed, 19 insertions(+), 10 deletions(-)
> 
> diff --git a/scripts/poky-autobuild-generate-sources-tarball b/scripts/poky-autobuild-generate-sources-tarball
> index 11ebda1..c445f24 100755
> --- a/scripts/poky-autobuild-generate-sources-tarball
> +++ b/scripts/poky-autobuild-generate-sources-tarball
> @@ -19,7 +19,7 @@ if [[ -z "$RELEASE" || -z "$VERSION" ]]; then
>  fi
>  
>  if [[ -z "$BRANCH" ]]; then
> -	$BRANCH = "master"
> +	BRANCH = "master"
>  fi
>  
>  BASEDIR=poky-tarball
> diff --git a/scripts/poky-setup-autobuilder b/scripts/poky-setup-autobuilder
> index 51e06eb..ad31fef 100755
> --- a/scripts/poky-setup-autobuilder
> +++ b/scripts/poky-setup-autobuilder
> @@ -140,22 +140,23 @@ def configureBot(buildtype):
>              bbInstallDir = bbMasterDir
>          elif buildtype == "slave":
>              bbInstallDir = bbSlaveDir
> -        cmd = "cd " + bbSourceDir + "; export PYTHONPATH=" + bbInstallDir + "/lib/python2.6/site-packages/:$PYTHONPATH; python ./setup.py install --prefix=" + bbInstallDir
> +        cmd = "cd " + bbSourceDir + "; export PYTHONPATH=" + bbInstallDir + "/lib/python2.6/site-packages/:$PYTHONPATH; python ./setup.py build; python ./setup.py install --prefix=" + bbInstallDir
>          os.system (cmd) 
>      except:
>          print "Issues Configuring "
>          sys.exit(1)
>  
>  
> -#BuildBot download parameters
> -bbVersion = "0.8.3"
> +# BuildBot download parameters
> +#bbVersion = "0.8.3"
> +# Pushing this back down to 0.8.2 until 0.8.3p1 comes out.
> +bbVersion = "0.8.2"
>  bbMasterDownloadUrl = "http://buildbot.googlecode.com/files/buildbot-" + bbVersion + ".tar.gz"
>  bbSlaveDownloadUrl = "http://buildbot.googlecode.com/files/buildbot-slave-" + bbVersion + ".tar.gz"
>  bbConfigDownloadUrl = None
>  bbInstallerHome = os.getcwd()
>  bbInstallFile = ""
> -# We need the expanded path for ~ later
> -bbHome = os.path.expanduser('~')
> +bbHome = ""
>  bbType = None
>  bbSlaveDesc="Poky Autobuilder Example"
>  
> @@ -188,7 +189,8 @@ parser.add_option( "--maxlogs", help = "The max number of logs you want saved. I
>                         action = "store", dest = "bbMaxLogs", default = "10" )                        
>  parser.add_option( "--adminmail", help = "The administrator email address. If left unset we set it to current user @ localhost",
>                         action = "store", dest = "bbAdminMail", default = "root@localhost" )                        
> -
> +parser.add_option( "--installbase", help = "The base install directory. If left unset we set we'll use --masterdir/slavedir/sourcedir/pstagedir/controldir or their defaults",
> +                       action = "store", dest = "bbHome", default = os.path.expanduser('~') )          
>  options, args = parser.parse_args( sys.argv )
>  
>  # We need to decide if we're doing a master or slave install or both
> @@ -236,7 +238,10 @@ if bbPStagingDir == "":
>  
>  if bbType == "master" or bbType == "both":
>      try:
> -        os.mkdir(bbMasterDir)
> +        # We do this here, because if setuputils is installed BuildBot wants to use it the easy_install way
> +        # however, their easy_install way will fail if the dir does not exist. It's a bug in the BB installer
> +        # that I'm going to have to figure out and push upstream.
> +        os.makedirs(bbMasterDir + "/lib/python2.6/site-packages/")
>      except:
>          print bbMasterDir + " already exists."
>          pass
> @@ -332,7 +337,10 @@ c['projectURL'] = pokyABConfig.poky_projurl
>  
>  if bbType == "slave" or bbType == "both":
>      try:
> -        os.mkdir(bbSlaveDir) 
> +        # We do this here, because if setuputils is installed BuildBot wants to use it the easy_install way
> +        # however, their easy_install way will fail if the dir does not exist. It's a bug in the BB installer
> +        # that I'm going to have to figure out and push upstream.
> +        os.makedirs(bbSlaveDir + "/lib/python2.6/site-packages/") 
>          os.mkdir(bbOutputDir) 
>          os.mkdir(bbPStagingDir) 
>  
> @@ -400,7 +408,7 @@ PSTAGEDIR=%s
>  # We should correct this for slave only/master only builds
>  
>  print """
> -nstallation complete. Please review the output above for any errors.
> +Installation complete. Please review the output above for any errors.
>  Then edit the master.cfg file in %s and start the build master and
>  build slave by running 'make start' in %s and %s directories.
>  ---------------------------------------------------------------------
> @@ -418,3 +426,4 @@ cd <poky-slave>; make start
>  """ % (bbMasterDir, bbMasterDir, bbSlaveDir, bbSlaveDir, bbSlaveDir, bbSlaveDir)
>  
>  
> +


