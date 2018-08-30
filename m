Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3E3FE00950; Wed, 29 Aug 2018 23:23:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8708E006C7
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 23:23:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 23:23:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,306,1531810800"; d="scan'208";a="84588499"
Received: from chia1-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.139.134])
	by fmsmga004.fm.intel.com with ESMTP; 29 Aug 2018 23:20:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Thu, 30 Aug 2018 18:20:42 +1200
Message-ID: <1644765.cHshforGbP@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <ddbfd4de-71e5-669e-73a9-0ee112ed1d1e@windriver.com>
References: <cover.1532341697.git.liezhi.yang@windriver.com>
	<1f2cc75c-b0f0-9216-fbe9-def4c17e3fb6@windriver.com>
	<ddbfd4de-71e5-669e-73a9-0ee112ed1d1e@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 1/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Thu, 30 Aug 2018 06:23:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

Sorry I meant to reply earlier.

I'm not especially happy with moving the constants to utils.py. Is there any 
way we can avoid that?

Thanks
Paul

On Thursday, 30 August 2018 2:05:11 PM NZST Robert Yang wrote:
> Hi Paul,
> 
> Do you have any comments on this, please ?
> 
> // Robert
> 
> On 07/31/2018 03:57 PM, Robert Yang wrote:
> > Hi Paul,
> > 
> > On 07/24/2018 04:33 PM, Paul Eggleton wrote:
> >> Hi Robert,
> >>
> >> On Monday, 23 July 2018 12:30:01 PM CEST Robert Yang wrote:
> >>> Now the logic is:
> >>> Use options.layer_type if specified, guess if not, default to 'M'.
> >>>
> >>> Note choices=['A', 'B', 'S', 'D', 'M', ''], the '' is for default='', we 
can't
> >>> use default='M' here, otherwise we don't know whether the 'M' is 
specified by
> >>> user or not, we don't guess if it is specified by user, otherwise, 
guess.
> >>>
> >>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> >>> ---
> >>>   layerindex/tools/import_layer.py | 18 +++++++++++++-----
> >>>   1 file changed, 13 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/
import_layer.py
> >>> index 2413cff..0d501f6 100755
> >>> --- a/layerindex/tools/import_layer.py
> >>> +++ b/layerindex/tools/import_layer.py
> >>> @@ -189,6 +189,10 @@ def main():
> >>>       parser.add_option("-s", "--subdir",
> >>>               help = "Specify subdirectory",
> >>>               action="store", dest="subdir")
> >>> +    parser.add_option("-t", "--type",
> >>> +            help = "Specify layer type. A: Base, B: Machine(BSP), S: 
> >>> Software, D: Distribution, M: Miscellaneous",
> >>> +            choices=['A', 'B', 'S', 'D', 'M', ''],
> >>> +            action="store", dest="layer_type", default='')
> >>
> >> If it's practical to do, could you make this part of the code use
> >> LayerItem.LAYER_TYPE_CHOICES from models.py so that this will work
> >> if that is extended in future? Of course that will mean initialising 
Django
> >> earlier, I'm not sure if that will have any side-effects that we wouldn't 
want.
> >> If you could give that a try though that would be great.
> > 
> > I think that the easies way is move the definition of LAYER_TYPE_CHOICES
> > to utils.py, then we can use utils.LAYER_TYPE_CHOICES in both models.py
> > and tools/import_layer.py
> > 
> > I've updated it in the repo:
> > 
> >    git://git.pokylinux.org/poky-contrib rbt/li
> >    http://git.pokylinux.org/cgit.cgi//log/?h=rbt/li
> > 
> > commit aeb1fd6a8f10b40637121643fc7df2f17c9cd87c
> > Author: Robert Yang <liezhi.yang@windriver.com>
> > Date:   Mon Jul 9 15:28:10 2018 +0800
> > 
> >      import_layer.py: add -t option for layer_type
> > 
> >      Now the logic is:
> >      Use options.layer_type if specified, and guess if not. Default to 
'M'.
> > 
> >      Note choices=['A', 'B', 'S', 'D', 'M', ''], the '' is for default='', 
we can't
> >      use default='M' here, otherwise we don't know whether the 'M' is 
specified by
> >      user or is the default value, we don't guess if it is specified by 
user,
> >      otherwise, guess.
> > 
> >      Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> > 
> > diff --git a/layerindex/models.py b/layerindex/models.py
> > index e5c8052..1ff653f 100644
> > --- a/layerindex/models.py
> > +++ b/layerindex/models.py
> > @@ -102,14 +102,8 @@ class LayerItem(models.Model):
> >           ('P', 'Published'),
> >           ('X', 'No update'),
> >       )
> > -    LAYER_TYPE_CHOICES = (
> > -        ('A', 'Base'),
> > -        ('B', 'Machine (BSP)'),
> > -        ('S', 'Software'),
> > -        ('D', 'Distribution'),
> > -        ('W', 'WRTemplates'),
> > -        ('M', 'Miscellaneous'),
> > -    )
> > +    LAYER_TYPE_CHOICES = utils.LAYER_TYPE_CHOICES
> > +
> >       name = models.CharField('Layer name', max_length=40, unique=True, 
> > help_text='Name of the layer - must be unique and can only contain 
letters, 
> > numbers and dashes')
> >       status = models.CharField(max_length=1, 
choices=LAYER_STATUS_CHOICES, 
> > default='N')
> >       layer_type = models.CharField(max_length=1, 
choices=LAYER_TYPE_CHOICES)
> > diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/
import_layer.py
> > index 2413cff..5373cce 100755
> > --- a/layerindex/tools/import_layer.py
> > +++ b/layerindex/tools/import_layer.py
> > @@ -178,6 +178,21 @@ def get_github_layerinfo(layer_url, username = None, 
> > password = None):
> > 
> >       return (json_data, owner_json_data)
> > 
> > +def get_layer_type_choices():
> > +    """
> > +    Return help string and choices for --type.
> > +    """
> > +    help_str = "Specify layer type."
> > +    choices = []
> > +    for i in utils.LAYER_TYPE_CHOICES:
> > +        key, description = i
> > +        help_str += ' %s: %s,' % (key, description)
> > +        choices.append(key)
> > +
> > +    help_str = help_str.rstrip(',')
> > +    choices.append('')
> > +
> > +    return (help_str, choices)
> > 
> >   def main():
> >       valid_layer_name = re.compile('[-\w]+$')
> > @@ -186,9 +201,15 @@ def main():
> >           usage = """
> >       %prog [options] <url> [name]""")
> > 
> > +    layer_type_help, layer_type_choices = get_layer_type_choices()
> > +
> >       parser.add_option("-s", "--subdir",
> >               help = "Specify subdirectory",
> >               action="store", dest="subdir")
> > +    parser.add_option("-t", "--type",
> > +            help = layer_type_help,
> > +            choices = layer_type_choices,
> > +            action="store", dest="layer_type", default='')
> >       parser.add_option("-n", "--dry-run",
> >               help = "Don't write any data back to the database",
> >               action="store_true", dest="dryrun")
> > @@ -263,7 +284,6 @@ def main():
> >               layer = LayerItem()
> >               layer.name = layer_name
> >               layer.status = 'P'
> > -            layer.layer_type = 'M'
> >               layer.summary = 'tempvalue'
> >               layer.description = layer.summary
> > 
> > @@ -349,11 +369,18 @@ def main():
> > 
> > 
> >                   logger.info('Creating layer %s' % layer.name)
> > -                # Guess layer type
> > -                if glob.glob(os.path.join(layerdir, 'conf/distro/
*.conf')):
> > +                # Guess layer type if not specified
> > +                if options.layer_type:
> > +                    layer.layer_type = options.layer_type
> > +                elif layer.name in ['openembedded-core', 'meta-oe']:
> > +                    layer.layer_type = 'A'
> > +                elif glob.glob(os.path.join(layerdir, 'conf/distro/
*.conf')):
> >                       layer.layer_type = 'D'
> >                   elif glob.glob(os.path.join(layerdir, 'conf/machine/
*.conf')):
> >                       layer.layer_type = 'B'
> > +                else:
> > +                    layer.layer_type = 'M'
> > +
> >                   layer.save()
> >                   layerbranch = LayerBranch()
> >                   layerbranch.layer = layer
> > @@ -411,11 +438,9 @@ def main():
> > 
> >                   if layer.name == 'openembedded-core':
> >                       layer.summary = 'Core metadata'
> > -                    layer.layer_type = 'A'
> >                   elif layer.name == 'meta-oe':
> >                       layer.summary = 'Additional shared OE metadata'
> >                       layer.description = layer.summary
> > -                    layer.layer_type = 'A'
> > 
> >                   if maintainers:
> >                       maint_re = re.compile(r'^"?([^"@$<>]+)"? *<([^<> ]
+)>[ 
> > -]*(.+)?$')
> > diff --git a/layerindex/utils.py b/layerindex/utils.py
> > index 861a841..5f44754 100644
> > --- a/layerindex/utils.py
> > +++ b/layerindex/utils.py
> > @@ -15,6 +15,15 @@ import fcntl
> >   import signal
> >   import codecs
> > 
> > +LAYER_TYPE_CHOICES = (
> > +    ('A', 'Base'),
> > +    ('B', 'Machine (BSP)'),
> > +    ('S', 'Software'),
> > +    ('D', 'Distribution'),
> > +    ('W', 'WRTemplates'),
> > +    ('M', 'Miscellaneous'),
> > +)
> > +
> >   def get_branch(branchname):
> >       from layerindex.models import Branch
> >       res = list(Branch.objects.filter(name=branchname)[:1])
> > 
> > // Robert
> >>
> >> Thanks,
> >> Paul
> >>
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre



